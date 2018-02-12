create table ACT_HI_IDENTITYLINK (
    ID_ NVARCHAR2(64),
    GROUP_ID_ NVARCHAR2(255),
    TYPE_ NVARCHAR2(255),
    USER_ID_ NVARCHAR2(255),
    ROLE_ID_ NVARCHAR2(64),
    TASK_ID_ NVARCHAR2(64),
    PROC_INST_ID_ NVARCHAR2(64),
    primary key (ID_)
);

create index ACT_IDX_HI_IDENT_LNK_USER on ACT_HI_IDENTITYLINK(USER_ID_);
create index ACT_IDX_HI_IDENT_LNK_TASK on ACT_HI_IDENTITYLINK(TASK_ID_);
create index ACT_IDX_HI_IDENT_LNK_PROCINST on ACT_HI_IDENTITYLINK(PROC_INST_ID_);