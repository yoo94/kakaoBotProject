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
        bubbleTextColor: "#FFFFFF",
        bubbleBackgroundColor: "#173D2C",
        quickReplyColor: "#DED6D2",
        quickReplyButtonBorderColor: "#F3F3F3",
        quickReplyButtonTextColor: "#161616",
        backgroundColor: "#FFFFFF",
        chatHeight: 800,
        notice: {
          message: "UNIPOST HOME",
          link: "https://unipost.co.kr/portal/",
          backgroundColor: "#FFFFFF",
          textColor: "#161616"
        },
        inputPlaceholder: "궁금한 것은 무엇이든 물어보세요!",
        errorMessage: "문제가 발생했어요~",
        onChatSend: (text) => {
          console.log(text)
          if (text === "상담원 연결") {
            Kakaoi.UI.setChatSubTitle("상담원과 대화중");
            Kakaoi.UI.showExitCounselingButton();
          }
          return true
        },
        onKeyDownUserChat: (text) => {
          if (text.includes("법인")) {
            Kakaoi.UI.showAutoComplete(["법인카드 작성법","법인카드 프로세스","법인카드 유니포스트"]);
          } else {
            Kakaoi.UI.hideAutoComplete();
          }
        }
      });
    }
  }
  KakaoCreateChatBotwithInit();
</script>