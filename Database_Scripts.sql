-- Sarah Piot
-- sfp987
-- CMPT350

create table users
(
    id        varchar primary key,
    firstname varchar not null,
    lastname  varchar not null
);

create table contacts

    id             varchar primary key,
    owner_userid   varchar references users (id),
    contact_userid varchar references users (id)
);

create table messages
(
    id               varchar primary key,
    sender_userid    varchar references users (id),
    recipient_userid varchar references users (id),
    message          varchar not null
);

create table likes
(
    id         varchar primary key,
    message_id varchar references messages (id),
    userid     varchar references users (id)
);


-- Insert 2 users
insert into users (id, firstname, lastname)
values ('daven-id', 'daven', 'casia'),
       ('sarah-id', 'sarah', 'piot');

-- Insert 1 contact
insert into contacts (id, owner_userid, contact_userid)
values ('message-1', 'daven-id', 'sarah-id');

-- Insert 2 messages
insert into messages (id, sender_userid, recipient_userid, message)
values ('message-1', 'daven-id', 'sarah-id', 'Hi Sarah'),
       ('message-2', 'sarah-id', 'daven-id', 'Hi Daven');

-- Insert 2 likes
insert into likes (id, message_id, userid)
values ('like-1', 'message-1', 'daven-id'),
       ('like-2', 'message-2', 'sarah-id');