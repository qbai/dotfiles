#include "list.h"

struct person {
    int age;
    int weight;
    struct list_head list;
};

struct person_list {
    struct list_head list;
};

int main()
{
    int i, j;
    struct person *tmp, *n;
    //struct person head;
    struct person_list head;
    struct list_head head2;
    struct list_head *pos, pos2;

    /* initialize head */
    INIT_LIST_HEAD(&head.list);
    INIT_LIST_HEAD(&head2);

    /* add entry */
    for (i = 10, j = 35; i < 40; i += 5, j += 5) {
        tmp = (struct person *)calloc(1, sizeof(struct person));
        tmp->age = i;
        tmp->weight = j;

        list_add(&tmp->list, &head.list);
    }

    for (i = 50, j = 85; i < 90; i += 5, j += 5) {
        tmp = (struct person *)calloc(1, sizeof(struct person));
        tmp->age = i;
        tmp->weight = j;

        list_add_tail(&tmp->list, &head2);
    }

    /* print all entry */
    list_for_each(pos, &head.list) {
        tmp = list_entry(pos, struct person, list);
        //tmp = list_last_entry(pos, struct person, list);
        printf("age: %d, weight: %d\n", tmp->age, tmp->weight);
    }

    list_for_each(pos, &head2) {
        tmp = list_entry(pos, struct person, list);
        printf("age: %d, weight: %d\n", tmp->age, tmp->weight);
    }

    /* del all entry */
    list_for_each_safe(pos, n, &head.list) {
    //list_for_each(pos, &head.list) {
    //list_for_each_entry_from_reverse(pos, &head.list, list) {
        tmp = list_entry(pos, struct person, list);
        //list_del(pos);
        list_del_init(pos);
        free(tmp);
    }

    list_for_each_safe(pos, n, &head2) {
        //list_for_each(pos, &head.list) {
        //list_for_each_entry_from_reverse(pos, &head.list, list) {
        tmp = list_entry(pos, struct person, list);
        //list_del(pos);
        list_del_init(pos);
        free(tmp);
    }


    /* is empty */
    printf("is empty: %d\n", list_empty(&head.list));
    printf("is empty: %d\n", list_empty(&head2));

    return 0;
}
