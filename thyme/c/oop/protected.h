#ifndef PROTECTED_H
#define PROTECTED_H

typedef struct _person {
        float wage;
        int groupid;
} Person;

Person *person_ctor(char name[]);

struct _persion2 {
        void *private;
        //Some other members
};

#endif /* PROTECTED_H */
