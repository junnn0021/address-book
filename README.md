## Requirement

### Web Server / WAS 서비스를 위한 인프라 구축

- Web Server 구축(apache v2.4 ~)
- WAS 구축(tomcat) - java: OpenJDK 설치 & yum/dnf로 java 설치 선택
- Web Server-WAS 연동 - Proxy모드 설정 또는 mod.jk 모드 설정
- DB 구축 및 연동
- CDN, 애플리케이션 및 인프라 모니터링, DNS 구성<p>
　　　　　　　　　+
- 기존 3 Tier로 구축한 위 과정을 Docker, K8s로 구축
<br>

## Summary
우리 페이지는 **도서 구매 예약 시스템**을 운영합니다.<p>사용자는 페이지 접속 후, 사용자 정보와 구매할 도서 정보를 입력하게 됩니다.

서버는 **Docker image를 이용하여 K8s를 구축**했습니다.

데이터베이스는 **GCP를 이용하여 구축**했습니다.

(현 프로젝트는 제공받은 Petclinic 코드를 일부 수정하여 진행했습니다.)

<br>

## Architecture

![image](https://github.com/junnn0021/address-book/assets/119108967/ccf2ee8c-e16d-40f2-a563-261ee9bc1a46)
- 아키텍처 구현 과정 : [Notion](https://www.notion.so/junnn0021/Terraform-AWS-98dde0b28f6d4feeac7e623e691966b1)

<br>

## Environment
<!--<div align=center>-->
<img src="https://img.shields.io/badge/GCP-4285F4?stylefor-the-badge&logo=Google Cloud&logoColor=FAFAFA"/> <img src="https://img.shields.io/badge/Docker-2496ED?stylefor-the-badge&logo=Docker&logoColor=FAFAFA"/> 
<img src="https://img.shields.io/badge/Kubernetes-326CE5?stylefor-the-badge&logo=Kubernetes&logoColor=FAFAFA"/> 
<img src="https://img.shields.io/badge/BigQuery-669DF6?stylefor-the-badge&logo=Google BigQuery&logoColor=FAFAFA"/> 
<img src="https://img.shields.io/badge/Looker-4285F4?stylefor-the-badge&logo=Looker&logoColor=FAFAFA"/> 
<img src="https://img.shields.io/badge/Apache-D22128?stylefor-the-badge&logo=Apache&logoColor=FAFAFA"/>
<img src="https://img.shields.io/badge/Tomcat-F8DC75?stylefor-the-badge&logo=Apache Tomcat&logoColor=000000"/>
<img src="https://img.shields.io/badge/Maven-C71A36?stylefor-the-badge&logo=Apache Maven&logoColor=FAFAFA"/>
<img src="https://img.shields.io/badge/JMeter-D22128?stylefor-the-badge&logo=Apache JMeter&logoColor=FAFAFA"/>
 <img src="https://img.shields.io/badge/MySQL-4479A1?style=stylefor-the-badge&logo=MySQL&logoColor=FAFAFA"/>

<!--</div>-->

<br>

## Example of use


<br>

## Prerequisites

