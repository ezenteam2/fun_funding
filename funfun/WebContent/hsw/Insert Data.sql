INSERT INTO rtqna values(rtqna_seq.nextval,0,current_date, 1100001, '안녕하세요');
INSERT INTO rtqna values(rtqna_seq.nextval,1,current_date, 1001, '네.안녕하세요');
INSERT INTO rtqna values(rtqna_seq.nextval,2,current_date,1100001, '질문있어요');
INSERT INTO rtqna values(rtqna_seq.nextval,0,current_date,1100002, '이거 안돼요');
INSERT INTO rtqna values(rtqna_seq.nextval,4,current_date,1001, '다시해보세요.');
INSERT INTO rtqna values(rtqna_seq.nextval,3,current_date,1100001, '얼마예요?');
INSERT INTO rtqna values(rtqna_seq.nextval,6,current_date,1001, '1만원이요');
INSERT INTO rtqna values(rtqna_seq.nextval,5,current_date,1100002, '그래도 안돼요');


INSERT INTO notice values(notice_seq.nextval,'test01제목','test01내용',sysdate,NULL,'Y',1001);
INSERT INTO notice values(notice_seq.nextval,'test제목'||notice_seq.nextval,'test내용'||notice_seq.nextval,sysdate,NULL,'Y',1001);



INSERT INTO faq values(faq_seq.nextval,'faq제목'||faq_seq.nextval,'faq내용'||faq_seq.nextval,sysdate,NULL,1001);
