#include "protected.h"


struct _person_real {
        Person person;  // must be first, and is a structure, not a pointer.
        int id;
        char name[NAME_MAX_LEN];
};

Person *person_ctor(char name[])
{
        struct _person_real *pr = malloc(sizeof(struct _person_real));

        if (pr) {
                pr->person.wage = DEFAULT_WAGE;
                pr->person.groupid = DEFAULT_GROUPID;
                pr->id = generate_id();  // <-- private func
                strncpy(pr->name, name, sizeof(pr->name));
                pr->name[sizeof(pr->name) - 1] = '\0';

                return &pr->person;  // <-- NOTE WELL
        } else {
                return NULL;
        }
}

static int generate_id()
{
        //return p->id;
}
