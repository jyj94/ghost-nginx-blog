# ghost nginx blog

![tst](./readmeImg/img1.png)

## 파일 설명
* Dockerfile : nginx 이미지 생성 시 사용
* docker-compose.yml : 다중 컨테이너 설정 파일
* ghostFile/ : ghost 컨테이너의 ghost 파일 디렉토리와 연결(백업 및 편집을 위해 사용)
* nginxFile/ : nginx 컨테이너의 /etc/nginx/nginx.conf 파일과 연결(프록시 설정을 위해 사용)
* certbotFile/ : letsencrypt 인증서 이동 후 보관을 위한 디렉토리(기존 장소에 보관할 시 컨테이너를 재실행할 때마다 삭제됨)

## 설치
1. Dockerfile의 위치로 이동 후 <code>docker build -t . </code>  명령으로 이미지 생성
2. <code>docker-compose up</code> 명령어로 컨테이너 생성 및 실행
3. <code>docker exec -it nginx-proxy /bin/zsh </code> 명령으로 컨테이너 진입
4. <code>certbot certonly -d [도메인]</code>으로 인증서 생성 후, <code>nginx</code>로 웹서버 시작

## 진행 상황
* (2019.December.4 14:41) 
	* nginx https 동작, ghost 백업 복원
	* 남은 상황 : 서버 재부팅 시 자동 실행, 인증서 자동 갱신, 업데이트 자동 실행
* 2020.02.16
  * Moving Repository
