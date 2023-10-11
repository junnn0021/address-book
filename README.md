## Person

이준석 : [junnn0021](https://github.com/junnn0021) | 
 --- | 

<br>

## Requirement

### Web Server / DB 연동 인프라 구축

- Web Server 구축
- Web Server-DB 구축 및 연동
- NAT, ALB, Auto Scaling 구축<p>
　　　　+
- 위 과정을 Terraform로 구축
<br>

## Summary
멀티 AZ로 구축된 DB와 연동된 **전화번호부 웹 서비스**를 운영합니다.<p>
모든 리소스는 **AWS 인프라에 Terraform으로 구축**했습니다.

<br>

## Architecture

![image](https://github.com/junnn0021/address-book/assets/119108967/ccf2ee8c-e16d-40f2-a563-261ee9bc1a46)
- 아키텍처 구현 과정 : [Notion](https://www.notion.so/junnn0021/Terraform-AWS-98dde0b28f6d4feeac7e623e691966b1)

<br>

## Environment
<!--<div align=center>-->
<img src="https://img.shields.io/badge/AWS-232F3E?stylefor-the-badge&logo=Amazon AWS&logoColor=FAFAFA"/>  <img src="https://img.shields.io/badge/Apache-D22128?stylefor-the-badge&logo=Apache&logoColor=FAFAFA"/>
<img src="https://img.shields.io/badge/PHP-777BB4?style=stylefor-the-badge&logo=PHP&logoColor=FAFAFA"/>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=stylefor-the-badge&logo=MySQL&logoColor=FAFAFA"/>
<img src="https://img.shields.io/badge/Terraform-844FBA?stylefor-the-badge&logo=Terraform&logoColor=FAFAFA"/> 
<!--</div>-->

<br>

## Example of use


<br>

## Prerequisites

AWS 배포 자동화를 구현하기 위해서는 AWS에 계정이 있어야 합니다.
```
https://aws.amazon.com/ko/
``` 
전화번호부 웹 서비스의 AWS 인프라를 구축 하기 위해 다음을 실행합니다.
```
terraform init
terraform plan
terraform apply
```
