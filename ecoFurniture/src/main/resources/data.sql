-- 로그인(LOGIN)
-- TODO: 관리자 admin user 1명 최초 생성
-- email : admin@naver.com
-- password : 123456
-- roles : ROLE_ADMIN
INSERT INTO TB_USER
VALUES ('admin@naver.com', -- 1. 이메일
        '$2a$10$TG1a5ywSrGNgf7/fFH.m0.EdTzHax8AGYNeAr8aIseF3DKyO0lDti', -- 2. 암호화 된 패스워드
        'eco_furniture', -- 3. 이름
        NULL, -- 4. 성별
        NULL, -- 5. 생년월일
        NULL, -- 6. 휴대전화
        NULL, -- 7. 주소
        'ROLE_ADMIN', -- 8. 역할 (권한)
        'N', -- 9. 계정 활성 여부 (예: 'Y' 또는 'N')
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), -- 10. 가입일시 (현재 날짜와 시간)
        NULL, -- 11. 마지막 로그인 일시 (아직 로그인하지 않은 경우)
        NULL -- 12. 기타 필요한 사용자 정보 (예: 추가적인 사용자 속성)
       );
-- TODO: 유저 user 1명 최초 생성
-- email : user@naver.com
-- password : 123456
-- roles : ROLE_USER
INSERT INTO TB_USER
VALUES ('user@naver.com', -- 1. 이메일
        '$2a$10$TG1a5ywSrGNgf7/fFH.m0.EdTzHax8AGYNeAr8aIseF3DKyO0lDti', -- 2. 암호화 된 패스워드
        '김아무개', -- 3. 이름
        NULL, -- 4. 성별
        20231218, -- 5. 생년월일
        01012345678, -- 6. 휴대전화
        NULL, -- 7. 주소
        'ROLE_USER', -- 8. 역할 (권한)
        'N', -- 9. 계정 활성 여부 (예: 'Y' 또는 'N')
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), -- 10. 가입일시 (현재 날짜와 시간)
        NULL, -- 11. 마지막 로그인 일시 (아직 로그인하지 않은 경우)
        NULL -- 12. 기타 필요한 사용자 정보 (예: 추가적인 사용자 속성)
       );

-- TODO: 인증 관련 데이터 등록
-- 공통코드/유형 권한 등록
INSERT INTO TB_CODE_CATEGORY
VALUES (300, '권한');
INSERT INTO TB_CODE
VALUES (30001, 'ROLE_USER', 'Y', 300);
INSERT INTO TB_CODE
VALUES (30002, 'ROLE_ADMIN', 'Y', 300);

-- -- 자주 묻는 질문(BOARD_FAQ)
-- INSERT INTO TB_FAQ
-- VALUES (TB_FAQ_SEQUENCE.nextval, '[주문/결제관련] 주문시 입력한 입금자명과 실제 입금자명이 다른데 어떻게 하나요?',
--         '주문시 등록하셨던 입금자명 상이할 경우 입금확인이 지연될 수 있습니다. 문의하기 또는 고객센터로 전화하여 입금자명 변경을 요청하여 주시기 바랍니다.',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_FAQ
-- VALUES (TB_FAQ_SEQUENCE.nextval, '[취소/교환/환불관리] 주문 내역 조회, 변경, 주문취소 방법은 어떻게 되나요?',
--         '구매한 제품이 마음에 들지 않거나 제품 하자가 발견되었다면 상품 수령 후 7일 이내 접수해 주셔야 교환/반품이 가능합니다.(단, 조건(조립 품목 등)에 맞지 않을 경우 교환 및 환불이 어려울 수 있습니다.).',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_FAQ
-- VALUES (TB_FAQ_SEQUENCE.nextval, '[취소/교환/환불관리] 교환환불 방법이 궁금해요.',
--         '구매한 제품이 마음에 들지 않거나 제품 하자가 발견되었다면 상품 수령 후 7일 이내 접수해 주셔야 교환/반품이 가능합니다.(단, 조건(조립 품목 등)에 맞지 않을 경우 교환 및 환불이 어려울 수 있습니다.).',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_FAQ
-- VALUES (TB_FAQ_SEQUENCE.nextval, '[배송관련] 배송기간은 얼마나 걸리나요?',
--         '택배 배송을 기본으로 하며, 제품의 특성에 따라 배송 방법이 변경 될 수 있습니다, 배솔 날짜는 제품 구매 확정 날짜로부터 출고 후 평균 1~3일이 소요됩니다. ※ 지역에 따라 배송기간이 상이할 수 있습니다.)',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_FAQ
-- VALUES (TB_FAQ_SEQUENCE.nextval, '[주문/결제관련] 주소를 변경할 수 있나요?',
--         '주소 변경을 원하신다면 가능한 한 빨리 고객지원센터로 문의해 주세요. 진행 상태에 따라 변경이 불가능 할 수 있음을 참고해주세요.',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- -- 공지사항(BOARD_NOTICE)
-- INSERT INTO TB_NOTICE
-- VALUES (TB_NOTICE_SEQUENCE.nextval, '쿠폰 발급 안내', '가입 시 15% 쿠폰 지급!, 생일 기념 20% 쿠폰 지급!',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_NOTICE
-- VALUES (TB_NOTICE_SEQUENCE.nextval, '에코퍼니쳐 9월 추석 배송 안내',
--         '2023년 9월 25(월) 오후 2시까지의 주문건은 추석 명절 전 배송, 이후 주문건은 2023년 10월 4일(수)부터 순차출고될 예정이오니 구매에 참고 부탁드리겠습니다. (제주, 도서산간 22일 오후2시까지 주문건 명절 전 수령)',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- -- 문의게시판(BOARD_REPLY_BOARD)
-- -- 1
-- INSERT INTO TB_REPLY_BOARD
-- VALUES (SQ_REPLY_BOARD.nextval, '제목', '내용', '작성자', 1, 0, 'N', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') ,NULL, NULL);
-- -- 2
-- INSERT INTO TB_REPLY_BOARD
-- VALUES (SQ_REPLY_BOARD.nextval, '제목', '내용', '작성자', 2, 0, 'N', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') ,NULL, NULL);
-- -- 3
-- INSERT INTO TB_REPLY_BOARD
-- VALUES (SQ_REPLY_BOARD.nextval, '제목', '내용', '작성자', 2, 2, 'N', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') ,NULL, NULL);
-- -- 4
-- INSERT INTO TB_REPLY_BOARD
-- VALUES (SQ_REPLY_BOARD.nextval, '제목', '내용', '작성자', 2, 2, 'N', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') ,NULL, NULL);
--
--
-- INSERT INTO TB_NOTICE
-- VALUES (TB_NOTICE_SEQUENCE.nextval, '에코퍼니쳐 9월 정기 후원',
--         '고객님들께서 구매해주신 소중한 금액의 3%를 세계자연기금(WWF)에 기부 완료하였습니다. 앞으로도 에코퍼니쳐는 사람과 환경이 상생하는 미래를 위한 그린캠페인에 앞장설 수 있도록 하겠습니다.',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- INSERT INTO TB_NOTICE
-- VALUES (TB_NOTICE_SEQUENCE.nextval, '에코퍼니쳐 8월 광복절연휴 배송 안내',
--         '2023년 08월 11일(금) 오후 2시까지의 주문건은 정상적으로 출고, 이후 주문건은 2023년 8월 16일(수)부터 순차출고될 예정이오니 구매에 참고 부탁드리겠습니다.',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), NULL, 'N');
--
-- -- 코드 카테고리
-- INSERT INTO TB_CODE_CATEGORY
-- VALUES (TB_CODE_CATEGORY_SEQUENCE.nextval, '상품 종류');
--
-- INSERT INTO TB_CODE_CATEGORY
-- VALUES (TB_CODE_CATEGORY_SEQUENCE.nextval, '상품 상태');
--
--
-- -- 코드
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, 'CHAIR', 'Y', 1);
--
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, 'TABLE', 'Y', 1);
--
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, 'PROPS', 'Y', 1);
--
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, '신품', 'Y', 2);
--
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, '미개봉 반품', 'Y', 2);
--
-- INSERT INTO TB_CODE
-- VALUES (TB_CODE_SEQUENCE.nextval, '파손', 'Y', 2);
--
--
-- -- 쿠폰
-- INSERT INTO TB_COUPON
-- VALUES (TB_COUPON_SEQUENCE.nextval, '생일 기념 10% 할인쿠폰', 10, '2024-01-01');
--
-- INSERT INTO TB_COUPON
-- VALUES (TB_COUPON_SEQUENCE.nextval, '가입 감사 쿠폰', 25, '2024-02-24');
--
-- INSERT INTO TB_COUPON
-- VALUES (TB_COUPON_SEQUENCE.nextval, '1주년 감사 쿠폰', 30, '2024-05-24');
--
-- -- 멤버 쿠폰
-- INSERT INTO TB_MEMBER_COUPON
-- VALUES (TB_MEMBER_COUPON_SEQUENCE.nextval, 'N', 1, 'EZREAL@NAVER.COM');
--
-- INSERT INTO TB_MEMBER_COUPON
-- VALUES (TB_MEMBER_COUPON_SEQUENCE.nextval, 'N', 2, 'XAYAH@NAVER.COM');
--
-- INSERT INTO TB_MEMBER_COUPON
-- VALUES (TB_MEMBER_COUPON_SEQUENCE.nextval, 'N', 3, 'CAITLYN@NAVER.COM');
--
--
-- -- 제품 이미지
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (1, '의자1', '개좋은 의자', 'CHAIR1.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR1.PNG',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--     INSERT
-- INTO TB_SHOP_ITEM_IMAGES
-- VALUES (2, '의자2', '개좋롤 의자', 'CHAIR2.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR2.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (3, '의자3', '개좋 의자', 'CHAIR3.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR3.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (4, '의자4', '좋은 의자', 'CHAIR4.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR4.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (5, '의자5', '북유럽 의자', 'CHAIR5.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR5.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (6, '의자6', '아메리칸 의자', 'CHAIR6.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/CHAIR6.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (7, '테이블1', '개좋은 테이블', 'TABLE1.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE1.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (8, '테이블2', '개좋롤 테이블', 'TABLE2.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE2.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (9, '테이블3', '개좋 테이블', 'TABLE3.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE3.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (10, '테이블4', '좋은 테이블', 'TABLE4.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE4.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (11, '테이블5', '북유럽 테이블', 'TABLE5.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE5.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (12, '테이블6', '아메리칸 테이블', 'TABLE6.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/TABLE6.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (13, '소품1', '개좋은 소품', 'PROPS1.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS1.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (14, '소품2', '개좋롤 소품', 'PROPS2.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS2.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (15, '소품3', '개좋 소품', 'PROPS3.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS3.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (16, '소품4', '좋은 소품', 'PROPS4.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS4.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (17, '소품5', '북유럽 소품', 'PROPS5.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS5.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
-- INSERT INTO TB_SHOP_ITEM_IMAGES
-- VALUES (13, '소품6', '아메리칸 소품', 'PROPS6.PNG', 'BLOB', 'HTTP://NAVER.COM/DUMMY/PROPS6.PNG', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N')
--
--
-- -- 제품
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 의자', 30000, 0, 'N', 'N', 0, 15, 1, TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 2, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 의자', 30000, 0, 'N', 'N', 0, 15, 1,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 3, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 의자', 30000, 0, 'N', 'N', 0, 15, 1,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 의자', 30000, 0, 'N', 'N', 0, 15, 1,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 의자', 30000, 0, 'N', 'N', 0, 15, 1,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 의자', 25000, 2500, 'N', 'Y', 10, 15, 2,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 2, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 의자', 25000, 2500, 'N', 'Y', 10, 15, 2,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 의자', 25000, 2500, 'N', 'Y', 10, 15, 2,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 의자', 30000, 3000, 'N', 'Y', 10, 20, 3,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 4, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 의자', 30000, 3000, 'N', 'Y', 10, 20, 3,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 의자', 30000, 3000, 'N', 'Y', 10, 20, 3,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 의자', 20000, 0, 'N', 'N', 0, 20, 4,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 의자', 35000, 3500, 'N', 'Y', 10, 30, 5,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 의자', 35000, 3500, 'N', 'Y', 10, 30, 5,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 의자', 30000, 6000, 'N', 'Y', 20, 25, 6,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 의자', 30000, 6000, 'N', 'Y', 20, 25, 6,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 의자', 30000, 6000, 'N', 'Y', 20, 25, 6,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 의자', 30000, 6000, 'N', 'Y', 20, 25, 6,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 의자', 30000, 6000, 'N', 'Y', 20, 25, 6,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 1);
--
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 테이블', 50000, 2500, 'N', 'Y', 5, 10, 7,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 3, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 테이블', 50000, 2500, 'N', 'Y', 5, 10, 7,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 테이블', 50000, 2500, 'N', 'Y', 5, 10, 7,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 테이블', 50000, 2500, 'N', 'Y', 5, 10, 7,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 테이블', 50000, 2500, 'N', 'Y', 5, 10, 7,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 테이블', 60000, 6000, 'N', 'Y', 10, 6, 8,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 테이블', 60000, 6000, 'N', 'Y', 10, 6, 8,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 테이블', 60000, 6000, 'N', 'Y', 10, 6, 8,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 테이블', 60000, 6000, 'N', 'Y', 10, 6, 8,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 테이블', 60000, 9000, 'N', 'Y', 15, 12, 9,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 4, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 테이블', 60000, 9000, 'N', 'Y', 15, 12, 9,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 테이블', 60000, 9000, 'N', 'Y', 15, 12, 9,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 테이블', 70000, 0, 'N', 'N', 0, 8, 10,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 테이블', 70000, 0, 'N', 'N', 0, 8, 10,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 테이블', 70000, 0, 'N', 'N', 0, 8, 10,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 테이블', 85000, 8500, 'N', 'Y', 10, 25, 11,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 테이블', 85000, 8500, 'N', 'Y', 10, 25, 11,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 테이블', 60000, 12000, 'N', 'Y', 20, 25, 12,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 테이블', 60000, 12000, 'N', 'Y', 20, 25, 12,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 테이블', 60000, 12000, 'N', 'Y', 20, 25, 12,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 테이블', 60000, 12000, 'N', 'Y', 20, 25, 12,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 테이블', 60000, 12000, 'N', 'Y', 20, 25, 12,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 2);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 소품', 13000, 0, 'N', 'N', 0, 37, 13,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 소품', 13000, 0, 'N', 'N', 0, 37, 13,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 소품', 13000, 0, 'N', 'N', 0, 37, 13,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 소품', 13000, 0, 'N', 'N', 0, 37, 13,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋은 소품', 13000, 0, 'N', 'N', 0, 37, 13,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋롤 소품', 7000, 700, 'N', 'Y', 10, 45, 14,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 소품', 9000, 1800, 'N', 'Y', 20, 80, 15,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 소품', 9000, 1800, 'N', 'Y', 20, 80, 15,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 소품', 9000, 1800, 'N', 'Y', 20, 80, 15,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '개좋 소품', 9000, 1800, 'N', 'Y', 20, 80, 15,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '좋은 소품', 3000, 0, 'N', 'N', 0, 30, 16,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 소품', 25000, 2500, 'N', 'Y', 10, 75, 17,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 소품', 25000, 2500, 'N', 'Y', 10, 75, 17,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 소품', 25000, 2500, 'N', 'Y', 10, 75, 17,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 소품', 25000, 2500, 'N', 'Y', 10, 75, 17,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '북유럽 소품', 25000, 2500, 'N', 'Y', 10, 75, 17,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 소품', 27000, 5400, 'N', 'Y', 20, 45, 18,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 소품', 27000, 5400, 'N', 'Y', 20, 45, 18,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
-- INSERT INTO TB_SHOP_ITEMS
-- VALUES (TB_SHOP_ITEMS_SEQUENCE.nextval, '아메리칸 소품', 27000, 5400, 'N', 'Y', 20, 45, 18,
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1, 3);
--
--
-- -- 장바구니
-- INSERT INTO TB_SHOP_CARTS
-- VALUES (TB_SHOP_CARTS_SEQUENCE.nextval, 'ADMIN@NAVER.COM', 0, 0);
--
-- INSERT INTO TB_SHOP_CARTS
-- VALUES (TB_SHOP_CARTS_SEQUENCE.nextval, 'EZREAL@NAVER.COM', 2, 52500);
--
-- INSERT INTO TB_SHOP_CARTS
-- VALUES (TB_SHOP_CARTS_SEQUENCE.nextval, 'VARUS@NAVER.COM', 2, 77500);
--
-- INSERT INTO TB_SHOP_CARTS
-- VALUES (TB_SHOP_CARTS_SEQUENCE.nextval, 'VAYNE@NAVER.COM', 2, 78000);
--
--
-- -- 주문
-- INSERT INTO TB_SHOP_ORDERS
-- VALUES (TB_SHOP_ORDERS_SEQUENCE.nextval, TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 52500, 'EZREAL@NAVER.COM', 0);
--
-- INSERT INTO TB_SHOP_ORDERS
-- VALUES (TB_SHOP_ORDERS_SEQUENCE.nextval, TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 77500, 'VARUS@NAVER.COM', 0);
--
-- INSERT INTO TB_SHOP_ORDERS
-- VALUES (TB_SHOP_ORDERS_SEQUENCE.nextval, TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 78000, 'VAYNE@NAVER.COM', 0);
--
--
-- -- 주문상품
-- INSERT INTO TB_SHOP_ORDER_PRODUCTS
-- VALUES (TB_SHOP_ORDER_PRODUCTS_SEQUENCE.nextval, 1, 2, 'Y', '배송완료', 5250);
--
-- INSERT INTO TB_SHOP_ORDER_PRODUCTS
-- VALUES (TB_SHOP_ORDER_PRODUCTS_SEQUENCE.nextval, 2, 2, 'Y', '배송완료', 7750);
--
-- INSERT INTO TB_SHOP_ORDER_PRODUCTS
-- VALUES (TB_SHOP_ORDER_PRODUCTS_SEQUENCE.nextval, 3, 2, 'Y', '상품 준비중', 7900);
--
--
-- -- 리뷰
-- INSERT INTO TB_SHOP_ITEM_REVIEW
-- VALUES (TB_SHOP_ITEM_REVIEW_SEQUENCE.nextval, 1, 5, '배송이 빠르고 제품이 튼튼해요', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N');
--
-- INSERT INTO TB_SHOP_ITEM_REVIEW
-- VALUES (TB_SHOP_ITEM_REVIEW_SEQUENCE.nextval, 2, 5, '제품이 튼튼하고 배송이 빨라요', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N');
--
--
-- -- 문의
-- INSERT INTO TB_SHOP_ITEM_QUESTION
-- VALUES (TB_SHOP_ITEM_QUESTION_SEQUENCE.nextval, '아메리칸 테이블 문의좀요', '4인가족이 쓸만한 사이즈일까요?', 'N',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 44);
--
-- INSERT INTO TB_SHOP_ITEM_QUESTION
-- VALUES (TB_SHOP_ITEM_QUESTION_SEQUENCE.nextval, '개좋은 의자 문의입니다.',
--         '안녕하세요 항상 수고 많으십니다. 다름이 아니라 개좋은 의자를 구매하려고 하는데 여러 개를 한 번에 구매하게 되면 할인을 받을 수 있나요? 답변 부탁드립니다 감사합니다.', 'N',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N', 1);
--
--
-- -- 문의 답글
-- INSERT INTO TB_SHOP_ITEM_REPLIES
-- VALUES (TB_SHOP_ITEM_REPLIES_SEQUENCE.nextval, 1, '넉넉하게 사용하실 수 있을 것으로 보입니다.', TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N');
--
-- INSERT INTO TB_SHOP_ITEM_REPLIES
-- VALUES (TB_SHOP_ITEM_REPLIES_SEQUENCE.nextval, 2, '대량 구매에 따른 별도 할인 프로그램은 제공하고 있지 않습니다.',
--         TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'), 'N');
--
--
-- -- 찜
-- INSERT INTO TB_LIKE
-- VALUES (TB_LIKE_SEQUENCE.nextval, 20, 'EZREAL@NAVER.COM');
--
-- INSERT INTO TB_LIKE
-- VALUES (TB_LIKE_SEQUENCE.nextval, 31, 'VARUS@NAVER.COM');
--
-- INSERT INTO TB_LIKE
-- VALUES (TB_LIKE_SEQUENCE.nextval, 5, 'VAYNE@NAVER.COM');
--
--


COMMIT;