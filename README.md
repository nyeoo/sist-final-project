# [Final-project] 👨‍👨‍👧‍👦💻 IT 프로젝트 모집/진행 웹 어플리케이션(IT Meetup)
<br>

## 1. 프로젝트 소개
📌 **기간** : 2024/02/19 ~ 2024/03/19 (1개월)<br>
📌 **주제** : IT 프로젝트 모집/진행 웹 어플리케이션<br>
📌 **사용기술** : Java, Spring Framework, Oracle, Jsp, HTML/CSS, Javascript, jQuery<br>
<br><br>

## 2. 프로젝트 진행과정
| 단계 | 기간 | 내용 |
|--|--|--|
| 사전준비 | 02/19 ~ 02/28 | 주제 선정(기획안 작성), 순서도 작성, 요구분석서 작성 |
| 기획 | 02/28 ~ 03/03 | 기능 구현 범위 설정, 프로젝트 정책 타당성 검토 및 협의, DB 설계 |
| 개발 | 03/04 ~ 03/14 | 기능 개발, UI 구성 |
| 검토 | 03/14 ~ 03/17 | 내부평가, 피드백 및 수정 |
| 발표 | 03/17 ~ 03/19 | 최종 결과물 수정 완료, 보고서 작성, ppt 제작 및 발표 |

<br>

## 2-1. 기획의도
- 기존의 IT 프로젝트 모집은 이메일이나 SNS를 통한 공고로 이루어지는 경우가 많은데, 이는 모집자와 지원자 간의 매칭 및 정보 수집이 번거로운 단점이 있습니다. 이러한 문제점을 개선하기 위해 사용자의 기본정보와 선호 사항을 기반으로 매칭과 프로젝트 진행을 도와주는 **팀 모집 및 그룹 기능**을 담았습니다.
- 또한, 개발자들은 자신이 참여한 프로젝트들을 한눈에 볼 수 있는 포트폴리오를 구축하고 싶어 합니다. 하지만 포트폴리오를 구성, 제작하기 위해 어느 정도의 시간과 노력이 소요됩니다. 그러므로 이러한 프로젝트 경험을 더욱 쉽게 정리하고 활용할 수 있도록, 자동 **포트폴리오 구성 기능**을 담았습니다.
<br><br>

## 2-2. 기능구현

### [ 파트 분배 ]
|  | 담당파트 |
|--|--|
| 팀원1 | 모집/신청 관리, 차단관리, 네임카드 페이지 구현 |
| 팀원2 | 모집공고 작성, 모집공고 목록 및 상세 페이지 구현 |
| 나(팀원3) | 홈 페이지, 완료된 프로젝트 목록 및 상세 페이지(포트폴리오) 구현 |
| 팀장 | 전체 디자인 구성 및 검토, 로그인/회원가입, 내정보 페이지 구현 |
| 팀원4 | 그룹 캘린더, 그룹 정보 설정 페이지 구현 |
| 팀원5 | 그룹 업무관리, 주간업무보고서 페이지 구현 |

<br>

## 3. 후기

### 1) 담당 파트 상세 내용
1. [사용자 - 홈 페이지]<br>
- 홈 페이지 상단에 소개글과 프로젝트 팀원 모집, 참여 신청 페이지로 바로 이동 할 수 있는 버튼 노출
- 인기 모집공고, 신규 모집공고 리스트 노출(12개 제한)
- 구성요소 : 마감까지의 남은 일자 / 프로젝트 예상시작일 / 예상종료일 / 모집하는 직무 / 작성자닉네임 / 프로필사진 / 모집공고글 제목 및 내용 / 조회수

<br>

2.  [사용자 - 완료된 프로젝트 목록 페이지] <br>
- 완료된 프로젝트 페이지를 리스트로 노출
- 리스트는 12개까지 노출 후 페이징 처리
- 카테고리별 필터 적용하여, 해당하는 프로젝트만 노출가능
- 구성요소 : 프로젝트 제목 / 프로젝트 팀 이름 / 카테고리 / 프로젝트 내용

<br>

3.  [사용자 - 완료된 프로젝트 상세 페이지(포트폴리오)] <br>
- 프로젝트 정보 및 통계 등을 활용하여 프로젝트 페이지(포트폴리오 페이지)를 구성
- 구성요소 : 프로젝트 제목 및 내용 / 대표이미지 3장 / 팀명 및 팀원소개(닉네임, 프로필사진) / 사용한 스킬 리스트 / 총 진행기간(시작일, 종료일) / 일정단계별 시작일, 종료일 / 통계(회의횟수, 업무할당건수, 업무보고건수, 완료된업무건수)

<br>

### 2) 프로젝트 설계 단계

<br>

### 3) 프로젝트 구현 단계

