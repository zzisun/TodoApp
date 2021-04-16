insert into user (user_id, password, name, email) values ('user1', '1234', '이노', 'eno@gmail.com');
insert into user (user_id, password, name, email) values ('user2', '1234', '트리', 'tree@gmail.com');

insert into work (title, content, created_at, updated_at, status, author_id) values('GitHub 공부하기', 'add, commit, push', '2021-04-08 16:40', '2021-04-08 16:40', 'TODO', 1);
insert into work (title, content, created_at, updated_at, status, author_id) values('블로그에 포스팅할 것', '* GitHub 공부내용', '2021-04-08 16:45', '2021-04-08 16:45', 'TODO', 1);
insert into work (title, content, created_at, updated_at, status, author_id) values('HTML/CSS 공부하기', 'input 태그 실습', '2021-04-08 16:50', '2021-04-08 16:50', 'DOING', 1);
insert into work (title, content, created_at, updated_at, status, author_id) values('Java 공부하기', 'Java의 정석 챕터10 읽기', '2021-04-08 16:55', '2021-04-08 16:55', 'DOING', 1);
insert into work (title, content, created_at, updated_at, status, author_id) values('Spring boot 공부하기', 'intercepter 적용하기', '2021-04-08 17:00', '2021-04-08 17:00', 'DONE', 1);

insert into timeline (content, created_at, author_id) values('해야할 일에 "GitHub 공부하기"를 등록하였습니다.', '2021-04-08 16:40', 1);
insert into timeline (content, created_at, author_id) values('해야할 일에 "블로그에 포스팅할 것"을 등록하였습니다.', '2021-04-08 16:40', 1);
insert into timeline (content, created_at, author_id) values('하고 있는 일에 "HTML/CSS 공부하기"를 등록하였습니다.', '2021-04-08 16:40', 1);
insert into timeline (content, created_at, author_id) values('하고 있는 일에 "Java 공부하기"를 등록하였습니다.', '2021-04-08 16:40', 1);
insert into timeline (content, created_at, author_id) values('완료한 일에 "Spring boot 공부하기"를 등록하였습니다.', '2021-04-08 16:40', 1);
