#include "hlist.h"

#define HASH_SIZE1 4096
#define HASH_BITSHIFT 12
#define HASH_MASK (HASH_SIZE1 - 1)

/* hash 3 */
static inline unsigned _hash_(unsigned b, unsigned hash_mask)
{
	const unsigned BIG_PRIME = 4294967291UL;
	return (((unsigned) b) * BIG_PRIME) & hash_mask;
}

#define HASH_SIZE2 (1 << HASH_BITSHIFT)
/* hash 2 */
#define HASH_FUNC(_idx) hash_32(_idx, HASH_BITSHIFT)
/* hash 1 */
#define HASH_FUNC2(x) ((unsigned long)(x) &     \
                       (HASH_SIZE1 - 1))

struct hlist_data {
    struct hlist_node node;
    int key;
};

struct hlist_head h_table[HASH_SIZE1];


void test1()
{
    int i;

    struct hlist_data *data1, *data2, *tmp;
    struct hlist_node *hnode;
    struct hlist_head *head;

    /* init htable */
    for (i = 0; i < HASH_SIZE1; i++)
        INIT_HLIST_HEAD(&h_table[i]);

    data1 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data1->key = 1000;

    data2 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data2->key = 2000;

    /* add data into htable */
    hlist_add_head(&data1->node, &h_table[(data1->key & HASH_MASK)]);
    hlist_add_head(&data2->node, &h_table[(data2->key & HASH_MASK)]);

    /* print all nodes */
    for (i = 0; i < HASH_SIZE1; i++) {
        hlist_for_each(hnode, &h_table[i]){
            struct hlist_data *tmp2 = hlist_entry(hnode, struct hlist_data, node);
            printf("key: %d index: %d\n", tmp2->key, i);
        }
    }

    printf("******************\n");

    /* for (i = 0; i < HASH_SIZE1; i++) { */
    /*     hlist_for_each_entry(tmp, &h_table[i], node) { */
    /*         printf("key: %d index: %d\n", tmp->key, i); */
    /*         //hlist_del(&(tmp->node)); */
    /*         hlist_del_init(&(tmp->node)); */

    /*         free(tmp); */
    /*     } */
    /* } */

    /* delete node */
    for (i = 0; i < HASH_SIZE1; i++) {
        head = &h_table[i];
        hlist_for_each_entry_safe(tmp, hnode, head, node) {
            hlist_del_init(&(tmp->node));
            free(tmp);
        }
    }

}

void test2()
{
    int i;

    struct hlist_data *data1, *data2, *tmp;

    /* init htable */
    for (i = 0; i < HASH_SIZE1; i++)
        INIT_HLIST_HEAD(&h_table[i]);

    data1 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data1->key = 1000;

    data2 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data2->key = 2000;

    /* add data into htable */
    hlist_add_head(&data1->node, &h_table[_hash_(data1->key, HASH_MASK)]);
    hlist_add_head(&data2->node, &h_table[_hash_(data2->key, HASH_MASK)]);

    for (i = 0; i < HASH_SIZE1; i++) {
        hlist_for_each_entry(tmp, &h_table[i], node)
            printf("key: %d index: %d\n", tmp->key, i);
    }

}

void test3()
{
    int i;

    struct hlist_data *data1, *data2, *tmp;

    /* init htable */
    for (i = 0; i < HASH_SIZE1; i++)
        INIT_HLIST_HEAD(&h_table[i]);

    data1 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data1->key = 1000;

    data2 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data2->key = 2000;

    /* add data into htable */
    hlist_add_head(&data1->node, &h_table[HASH_FUNC(data1->key)]);
    hlist_add_head(&data2->node, &h_table[HASH_FUNC(data2->key)]);

    for (i = 0; i < HASH_SIZE1; i++) {
        hlist_for_each_entry(tmp, &h_table[i], node)
            printf("key: %d index: %d\n", tmp->key, i);
    }

}

#define HASH_ARRAY_LENGTH 50

void test4()
{
    int i, rd = 5;
    struct hlist_data *data[HASH_ARRAY_LENGTH];
    struct hlist_data *tmp;

    /* init htable */
    for (i = 0; i < HASH_SIZE1; i++)
        INIT_HLIST_HEAD(&h_table[i]);

    for (i = 0; i < HASH_ARRAY_LENGTH; i++) {
        data[i] = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
        data[i]->key = rd * 13;
        rd *= 15;

        //hlist_add_head(&data[i]->node, &h_table[(data[i]->key & HASH_MASK)]);
        //hlist_add_head(&data[i]->node, &h_table[HASH_FUNC(data[i]->key)]);
        //hlist_add_head(&data[i]->node, &h_table[_hash_(data[i]->key, HASH_MASK)]);
        hlist_add_head(&data[i]->node, &h_table[_hash_(jhash(&data[i]->key, sizeof(int), 0), HASH_MASK)]);
    }

    for (i = 0; i < HASH_SIZE1; i++) {
        hlist_for_each_entry(tmp, &h_table[i], node)
            printf("key: %d index: %d\n", tmp->key, i);
    }

}

void test5()
{
    int i;
    struct hlist_data *data1, *data2, *tmp;

    /* init htable */
    for (i = 0; i < HASH_SIZE1; i++)
        INIT_HLIST_HEAD(&h_table[i]);

    data1 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data1->key = 1000;

    data2 = (struct hlist_data *) calloc(1, sizeof(struct hlist_data));
    data2->key = 2000;

    /* add data into htable */
    hlist_add_head(&data1->node, &h_table[_hash_(jhash(&data1->key, sizeof(int), 0), HASH_MASK)]);
    hlist_add_head(&data2->node, &h_table[_hash_(jhash(&data2->key, sizeof(int), 0), HASH_MASK)]);

    for (i = 0; i < HASH_SIZE1; i++) {
        hlist_for_each_entry(tmp, &h_table[i], node)
            printf("key: %d index: %d\n", tmp->key, i);
    }

}


int main()
{

    test1();
    /* printf("\n"); */
    /* test2(); */
    /* printf("\n"); */
    /* test3(); */

    //test4();
    //test5();

    return 0;
}
