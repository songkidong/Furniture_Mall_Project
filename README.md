# Furniture_Mall_Project
![image](https://github.com/shsh99/Furniture_Mall_Project/assets/134079624/e345ed1e-88a5-473d-8a52-389513e7d75a)



## 가구 쇼핑몰 웹 개발 팀 프로젝트 

<br>

## 🚀 프로젝트 개요
- ***모든 팀원이 풀스택으로 개발에 참여했으며, 주 포지션은 아래와 같습니다.***
<br>

|   Name   |(팀장) 신동구  | 도권재 | 송기동 | 이대훈 | 박완수 | 조규보 |
| :------: | --- | --- | --- | --- | --- |--- |
| **Position** |상품 CRUD, 제품상세페이지 기능 |장바구니 crud, 상품 문의, 찜 기능 | 게시판 CRUD | 로그인/회원가입 |카테고리 지정, 주문 CRUD 기능 |이미지 파일 DB에 저장, 주문 CRUD 기능 |


- **프로젝트 기간 : 2023년 11월 15일 ~ 2023년 12월 03일**


<br>

## 🎮 기술 스택

### ✨ Front-End

<details>
    <summary>⚡️ FE 자세히 살펴보기</summary>
    <br>
    <ul>
        <li>bootstrap : 5.0 </li>
        <li>HTML5 </li>
        <li>CSS3 </li>
        <li>JavaScript </li>
        <li>TypeScript </li>
        <li>React </li>
        <li>axios </li>
        <li>nodeModules </li>
        
       
    </ul>
</details>

  <br>

### 💻 Back-End

<details>
      <summary>⚡️ BE 자세히 살펴보기</summary>
      <br>
      <ul>
          <li>springboot : 2.7.17  </li>
          <li>Oracle SQL : </li>
          <li>jdk : 11.0.20  </li>
          <li>java : 11  </li>
          <li>lombok </li>
          <li>Oracle DB </li> 
          <li>JPA </li>
          <li>lombok </li>
          <li>javax </li>
          
      </ul>
  </details>
  
  <br>
  
### 🛠 외부 API

<details>
      <summary>⚡️ API 자세히 살펴보기</summary>
      <br>
      <ul>
          <li>카카오페이 API</li>  
          <li>DAUM 우편번호 찾기 API</li>       
      </ul>
</details>

  <br>


### 🙌🏻 Collaboration
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=Jira&logoColor=white"/> <img src="https://img.shields.io/badge/SpringBoot-6DB33F?style=flat&logo=Slack&logoColor=white"/> <img src="https://img.shields.io/badge/Github-181717?style=flat&logo=Github&logoColor=white"/> <img src="https://img.shields.io/badge/SQL-4479A1?style=flat&logo=Notion&logoColor=white"/> <img 
src="https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=Notion&logoColor=white"/> <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=Notion&logoColor=white"/>
<img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=Docker&logoColor=white"/>
<img src="https://img.shields.io/badge/Google Cloud-4285F4?style=flat-square&logo=Google Cloud&logoColor=white"/>
<img src="https://img.shields.io/badge/java-007396?style=flat-square&logo=java&logoColor=white"/>
<img src="https://img.shields.io/badge/ORACLE-F80000?style=flat-square&logo=oracle&logoColor=white"/>
<img src="https://img.shields.io/badge/Typescript-3178C6?style=flat-square&logo=Typescript&logoColor=white"/>
<img src="https://img.shields.io/badge/React-61DAFB?style=flat-square&logo=React&logoColor=black"/>

<br>

## ⚙ 의존성
```
implementation 'org.apache.tomcat.embed:tomcat-embed-jasper'
implementation 'javax.servlet:jstl'
implementation 'org.springframework.boot:spring-boot-starter-aop'
implementation 'org.springframework.boot:spring-boot-starter-validation'
implementation 'org.springframework.boot:spring-boot-starter-web'
implementation 'org.springframework.security:spring-security-crypto'
compileOnly 'org.projectlombok:lombok'
developmentOnly 'org.springframework.boot:spring-boot-devtools'
implementation 'org.mybatis.spring.boot:mybatis-spring-boot-starter:2.3.0'
runtimeOnly 'com.mysql:mysql-connector-j'
annotationProcessor 'org.projectlombok:lombok'
testImplementation 'org.springframework.boot:spring-boot-starter-test'
implementation 'org.springframework.boot:spring-boot-starter-mail'
implementation 'org.springframework:spring-context-support'
implementation group: 'net.nurigo', name: 'javaSDK', version: '2.2'
implementation 'commons-io:commons-io:2.6'
implementation 'com.google.code.gson:gson:2.8.6'
implementation 'commons-fileupload:commons-fileupload:1.3.1'
```

## 1️⃣ 프로젝트 구조

<details>
    <summary>⚡️ 구조 자세히 살펴보기</summary>
 📦src
     ┗ 📂main
       ┣ 📂java
       ┃ ┗ 📂com
       ┃   ┗ 📂project
       ┃     ┗ 📂ecofurniture
       ┃       ┃ ┣ 📂config
       ┃       ┃ ┗ 📂controller
       ┃       ┃  ┗ 📂admin
       ┃       ┃ ┃  ┗ 📂code
       ┃       ┃ ┃  ┗ 📂coupon
       ┃       ┃ ┗ 📂auth
       ┃       ┣ 📂dto
       ┃       ┃ ┣ 📂kakao
       ┃       ┃ ┣ 📂nation
       ┃       ┃ ┣ 📂request
       ┃       ┃ ┗ 📂response
       ┃       ┣ 📂enums
       ┃       ┣ 📂handler
       ┃       ┃ ┗ 📂exception
       ┃       ┣ 📂repository
       ┃       ┃ ┣ 📂interfaces
       ┃       ┃ ┗ 📂model
       ┃       ┣ 📂service
       ┃       ┗ 📂utils
       ┣ 📂resources
       ┃ ┣ 📂static
       ┃ ┣ 📂templates
   

</details>

<br>

## 2️⃣ 프로젝트 개요
- 배운것을 최대한 활용할 수 있는 주제를 고르다가 쇼핑몰 웹 사이트를 구현하면 배운 기술들을 모두 활용할 수 있을 것 같아서 주제로 선정
- 이케아를 참고고

<br>

## 3️⃣ 내가 맡은 기능

#### 게시판 CRUD (검색, 페이징 처리)
- 공지사항
- 자주묻는질문
- Q&A (계층형 쿼리를 사용해 댓글 구현)


<br>

## 4️⃣ ERD & 테이블 명세서
#### 테이블 명세서 : https://docs.google.com/spreadsheets/d/1zpjjtAKGhq-PrGZjYdW3FrDrXBLRjHzK8iVUpqgpsR0/edit?usp=sharing

![image](https://github.com/shsh99/Furniture_Mall_Project/assets/134079624/993b9038-335d-465f-b4d3-aeaf0915e5b9)


<br>

## 5️⃣ SiteMap

<table>
<tr>
 <td> <b>고객</b></td>
 <td> <b>매니저</b></td>
 </tr>
<tr>
<td><img src="https://github.com/shsh99/Furniture_Mall_Project/assets/134079624/7fa1b7e8-92e9-4b48-a465-645e02d84e1c"
        ></td>
<td><img src="https://github.com/shsh99/Furniture_Mall_Project/assets/134079624/d8a42127-feed-4696-a252-ccb1661669b1"
></td>
</tr>
</table>

<br>
