<%--
  Created by IntelliJ IDEA.
  User: yoo94
  Date: 2023-05-04
  Time: 오후 2:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>unipost Kakao Bot</title>
  </head>
  <body>
    <h1>Kakao Bot Sprig Project</h1>
  </body>
</html>
<script>
window.Kakaoi={};
window.Kakaoi.UI={};
</script>
<script type="text/javascript" src="https://s.kakaoicdn.net/webchatbot/prod/js/latest/kakaoi.js?1"></script>
<script type="text/javascript" src="https://mk.kakaocdn.net/dn/vertebra/sdk/vertebra.latest.js?1"></script>
<script>
  function KakaoCreateChatBotwithInit() {
    if(Kakaoi){
      Kakaoi.init({
        serviceName: "unipost",
        serviceKey: "service key",
        vertebra: {
          serviceId: "vertebra service id",
          serviceName: "vertebra service name",
          svcDomain: "vertebra service domain",
          developmentMode: true
        }
      });
      Kakaoi.UI.createChat({
        title: "유니포스트 챗봇",
        subTitle: "봇과 대화중",
        profileName: "유니포스트",
        profileImageUrl: "https://daum.net/some.png",
        bubbleBackgroundColor: "#aabbcc",
        bubbleTextColor: "#aabbcc",
        activeKeyword: "시작",
      });
    }
  }
  KakaoCreateChatBotwithInit();
</script>