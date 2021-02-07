CREATE DATABASE  IF NOT EXISTS `thucung` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `thucung`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: thucung
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogthucung`
--

DROP TABLE IF EXISTS `blogthucung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogthucung` (
  `blogthucung_id` int(11) NOT NULL AUTO_INCREMENT,
  `blogthucung_title` text COLLATE utf8_bin,
  `blogthucung_noidung` text COLLATE utf8_bin,
  `blogthucung_image` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`blogthucung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogthucung`
--

LOCK TABLES `blogthucung` WRITE;
/*!40000 ALTER TABLE `blogthucung` DISABLE KEYS */;
INSERT INTO `blogthucung` VALUES (4,'Chó Shiba | Những điều cần biết khi về chó Shiba','Lịch sử chó Shiba.\r\nNhật Bản là quê hương của bốn giống chó bản địa nổi tiếng, trong đó Shiba Inu là nhỏ nhất. Loại chó này ở Nhật Bản được coi như một con chó săn cho những trò chơi nhỏ. Hầu hết mọi người khi nghe tên của giống chó Shiba Inu, lần đầu tiên đều cảm thấy khó hiểu. Cho đến thời gian gần đây, giống chó Shiba mới bắt đầu được phổ biến. Từ \'Inu\' có nghĩa là con chó trong tiếng Nhật và \'Shiba\' có nghĩa là cây bụi, người ta cho rằng con chó này được đặt tên như vậy vì chúng săn mồi chủ yếu trong bụi cây. Dịch bệnh gây xáo trộn xảy ra ở Nhật Bản trong thế chiến II gần như làm cho giống Shiba Inu bị tuyệt chủng, nhưng những quần thể còn sót lại đã được tập hợp sau chiến tranh và một lần nữa chú chó con đáng yêu của Nhật Bản xuất hiện trở lại..\r\nĐặc điểm bên ngoài.\r\nShiba Inu cao khoảng 35 đến 45 cm. Trọng lượng của chúng sẽ từ 8 đến 11 kg tùy thuộc vào giới tính. Shiba Inu có đôi tai nhỏ, dựng đứng, đầu tròn. Shiba Inu có lớp lông kép với lớp lông cứng bên ngoài bảo vệ lớp dưới dày đặc, mềm mại. Bộ lông thường có các màu đen với nâu hoặc đỏ. Tất cả các màu này được kết hợp với các dấu kem hoặc buff. Đuôi được cuộn tròn phía sau lưng. Chúng thường sẽ có tuổi thọ từ 12 đến 15 năm. Chú chó Shiba thọ nhất được ghi nhận là ở tuổi 26.\r\nTính cách Shiba Inu - Bạn bè hay kẻ thù?\r\nShiba Inu với tính cách lôi cuốn của chúng có thể là một trong những chú chó thú vị nhất, đáng tiếc nếu bạn bỏ qua Shiba khi lựa chọn làm bạn của mình.\r\n\r\nNhiều người cảm thấy chú chó này không dành cho chủ sở hữu chó mới làm quen. Với một số nhu cầu, yêu cầu môi trường nhất định cần được đáp ứng và cần sự huấn luyện thích hợp, chú chó này có cá tính lớn hơn các loại chó khác. Nhưng cũng dễ dàng mang đến niềm vui vào hầu hết các gia đình.\r\nTính cách Shiba Inu - Sự phức tạp.\r\nShiba ban đầu được lai tạo để săn cả trò chơi lớn và nhỏ. Nhiệm vụ chính của chúng là gạt đồ vật ra khỏi bàn chải và bụi rậm. Chúng được lai tạo để trở nên độc lập, nhanh nhẹn và cực kỳ thông minh. Những đặc điểm này đã được truyền qua nhiều năm và vẫn còn tồn tại phần lớn tính cách của con chó này.\r\n\r\nNhững đặc điểm tính cách này đi kèm với một số xu hướng đòi hỏi một số kỹ năng hiểu biết và quản lý.\r\nMẹo chăm sóc Shiba\r\nChó Shiba Inu là những sinh vật rất nhỏ nhưng nhanh nhẹn vì vậy khi chăm sóc chúng cũng cần chú ý tới tầm vóc củ chúng. Khi những chú chó Shiba Inu được sinh ra, cần phải chăm sóc nhiều hơn vì kích thước chung của chúng rất nhỏ. Nếu nhà bạn có trẻ con không nhận thức được sức mạnh của chúng, bạn nên giám sát chúng khi chúng đang ở gần những chú chó Shiba con.\r\n\r\nChăm sóc đúng cách phải được thực hiện để đảm bảo sức khỏe và sức khỏe của những chú chó Shiba Inu. Sự chăm sóc này cần bắt đầu từ lúc một chú chó con Shiba Inu được sinh ra. Ngoài việc để mắt đến những đứa trẻ chủ nhân cũng nên xem xét nhiệt độ phòng và đảm bảo rằng những chú chó con đủ ấm.\r\n\r\nMột con chó con Shiba Inu nên có ít nhất hai lần tiêm chủng đa trị. Những mũi tiêm chủng cần có distemper và parvo. Tất cả các giống chó, bao gồm cả chó Shiba Inu, được pháp luật yêu cầu phải nhận mũi tiêm khi chúng được hơn ba tháng tuổi. Tất cả chó con Shiba Inu cũng nên được tiêm phòng dại.\r\nBác sĩ thú y cá nhân của bạn cũng có thể yêu cầu chú chó Shiba Inu của bạn được tiêm vắc-xin bổ sung để ngăn ngừa vi-rút Bordatella và Bệnh Lyme.\r\n\r\nChó con Shiba Inu nên bắt đầu tiêm vắc-xin này sau sáu tuần sinh. Sau đó, họ nên bắt đầu nhận các vắc-xin này cứ sau ba đến bốn tuần. Tất cả các mũi tiêm nói chung nên được mua trong mười sáu tuần tuổi.\r\n\r\nNhững mối quan tâm chăm sóc cơ bản khác cần được xem xét khi nói đến chú chó Shiba Inu của bạn là cung cấp cho nó một chế độ ăn uống công bằng và cân bằng. Chế độ ăn kiêng không nên bao gồm phế liệu trên bàn thường có hại cho chó. Khi quyết định loại thức ăn nào để phục vụ chú chó của bạn, bạn nên liên hệ với bác sĩ thú y để tìm hiểu quy trình cho ăn đúng cách và loại thức ăn nào nên được cung cấp cho chúng. Thói quen ăn uống tốt nên bắt đầu sớm, và chó con Shiba Inu nên được dạy sớm về việc không nhai, gặm phế liệu.\r\n\r\nMột mối quan tâm khác với giống chó Shiba Inu là vấn đề rụng lông của nó. Chúng sẽ bắt đầu rụng lông hai lần một năm. Sự lột xác của giống chó này có nhiều đến mức, lông có thể bỏ đầy một túi hàng tạp hóa trong suốt quá trình. Để hỗ trợ quá trình rụng lông và giữ cho ngôi nhà của bạn không có lông chó không mong muốn, chủ sở hữu nên chải lông cho chó thường xuyên. Điều này cũng nên được thực hiện hàng ngày để ngăn chặn sự thắt nút không cần thiết khi thay lông.\r\n\r\nĐối với hầu hết các con chó Shiba Inu không cần tắm nhiều. Thông thường, bạn có thể tắm cho chó con Shiba Inu chỉ bốn lần một năm trong thời gian không rụng lông. Tắm cho chúng nhiều hơn thực sự có thể có hại cho da của chúng.','images/blogthucungchoshiba.jpg'),(5,'Chó Husky - Thông tin chi tiết về Husky thuần chủng','Chó husky là tên của một số loại và giống chó thường được sử dụng làm chó kéo xe ở các quốc gia như New Zealand, Alaska và một số vùng của Hoa Kỳ. Bespoke đến các khu vực phía bắc của thế giới như những con chó kéo xe và sự phổ biến của chúng như những vật nuôi trong nhà là khá muộn.\r\n\r\nGiờ đây, không còn là những hình tượng được bọc bằng nhựa trong nhiều sản phẩm và linh vật cho các đội thể thao, chú chó husky trung thành và mạnh mẽ hiện đang là một đặc điểm nổi bật trong nhà của nhiều người yêu chó trên toàn thế giới. Có hơn 5 giống husky, từ husky Alaska phổ biến, Mackenzie Rive Husky, Sakhalin Husky và tất nhiên danh sách này sẽ không được hoàn thành nếu không có Siberian và Tamaskan Husky.\r\nNgười bạn đồng hành hoàn hảo.\r\nHusky được coi là người bạn đồng hành hoàn hảo của nhiều chủ sở hữu của chúng, có lẽ vì thực tế là chúng cực kỳ trung thành và đặc biệt là những giống chó già - rất chú ý tới những điều chủ của chúng cần và cư xử cực kỳ tốt trong hầu hết các tình huống.\r\n\r\nChó husky Alaska rất năng động, điều này làm cho chúng trở nên tuyệt vời cho các gia đình có trẻ em, tràn đầy năng lượng và chúng là một trong những chú chó được lựa chọn cho những người nuôi thú cưng cần một ai đó để chạy bộ hàng ngày. Khi chúng được chạy nhảy, những giống chó này thực sự rất năng động, vì vậy chúng cần rất nhiều không gian để chạy và chơi.\r\nNgày nay, giống chó husky Siberia đang trở nên phổ biến như một trong những giống chó đồng hành tốt nhất trên thế giới hiện nay. Chúng là những con chó rất mạnh mẽ và rất siêng năng, cũng là một thành viên của gia đình Spitz. Được biết đến là một con chó rất hiền lành và tinh nghịch, thường vui vẻ với bộ mặt táo tợn, nó là một con chó cực kỳ ngoan ngoãn và rất tốt với trẻ em và gia đình.\r\n\r\nBây giờ nhiều nơi lại tạo chó cung cấp husky Siberian rất dễ thương và rất thuần hóa. Với bộ lông mượt mà và rậm rạp và một số dấu vết trên đầu, chó husky Siberia là một giống chó dễ nhận biết. Sức khỏe dẻo dai, bạn không cần phải lo lắng nhiều vì hầu hết các thành viên của giống chó này và gia đình chó Spitz đều cực kỳ khỏe mạnh trong mọi điều kiện.\r\n\r\nNhững phiền não đến với tuổi già là không thể tránh khỏi nhưng nó không phải chịu những vấn đề cụ thể liên quan đến chó hoặc giống chó. Tất cả phụ thuộc vào khí hậu và loại thức ăn bạn mang đến cho husky. Nó thường thích sống ở vùng khí hậu mát mẻ hơn và không thích những căn hộ bị đóng cửa. Nếu nhà bạn có một cái sân rộng, nó sẽ rất tuyệt vời. Bạn sẽ thấy rằng husky là một con chó đồng hành hoàn hảo và trung thành khi nuôi chúng ở trong nhà.\r\nNhững lưu ý khi mua chó Husky.\r\nMột con chó husky là sự lựa chọn tốt nhất cho các gia đình đang tìm kiếm một con chó to lớn, ôn hòa về tính khí, nhưng vẫn sống động và hòa đồng. Nhiều giống chó husky khác nhau sẽ bao gồm chó husky Siberia và Alaska phổ biến. Khi chọn con chó husky của bạn, điều quan trọng là phải xem xét một vài yếu tố liên quan đến con chó của bạn như sức khỏe chung của nó tại thời điểm nhận nuôi. Chúng tôi cung cấp cho bạn một số kiến ​​thức về những điều bạn cần xem xét khi chọn chú chó husky của bạn.\r\nChăm sóc chó Husky.\r\n\r\n Chó Husky thường được coi là một trong những lựa chọn phổ biến nhất mỗi khi gia đình muốn nuôi một chú chó. Hiền lành và tinh nghịch, chó husky phù hợp ngay cả với những gia đình có nhiều thú cưng hoặc trẻ nhỏ. Tuy nhiên, như với tất cả các vật nuôi khác, chó husky đòi hỏi phải được chăm sóc để đảm bảo sức khỏe, sự an toàn về thể chất của chúng và cần lựa chọn thức ăn phù hợp cho chó Husky. ','images/blogthucungchohusky.png');
/*!40000 ALTER TABLE `blogthucung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cachnuoi`
--

DROP TABLE IF EXISTS `cachnuoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cachnuoi` (
  `cachnuoi_id` int(11) NOT NULL AUTO_INCREMENT,
  `cachnuoi_title` text COLLATE utf8_bin,
  `cachnuoi_noidung` text COLLATE utf8_bin,
  `cachnuoi_image` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cachnuoi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cachnuoi`
--

LOCK TABLES `cachnuoi` WRITE;
/*!40000 ALTER TABLE `cachnuoi` DISABLE KEYS */;
INSERT INTO `cachnuoi` VALUES (1,'Cách Nuôi Chó Husky Và Những Lưu Ý Trong Quá Trình Nuôi Dưỡng.','Chế độ dinh dinh dưỡng hợp lý cho chó Husky.\nHusky là giống chó lao động, ưa thích vận động cường độ mạnh nên chế độ dinh dưỡng cần cung cấp cho chúng thật sự rất quan trọng. Thông thường, với mỗi độ tuổi khác nhau của chó Husky, chế độ dinh dưỡng cũng khác nhau. Mỗi giai đoạn sinh trưởng thì nhu cầu bổ sung chất là khác nhau.\nVới chó Husky 1- 2 tháng tuổi.\nCách nuôi chó Husky con trong giai đoạn này cần bạn phải dành khá nhiều thời gian. Chó Husky 1 tháng tuổi đa phần răng chưa mọc đủ. Do đó, bạn chỉ nên cho chúng ăn cháo nấu với nước hầm xương chẳng hạn. Hạn chế cho ăn thức ăn quá cứng. Chó Husky tuổi này cũng ăn được thức ăn khô. Tuy nhiên, bạn phải ngâm mềm thức ăn khoảng 5 phút.\n\nMỗi ngày, nên chia thành 4-5 bữa ăn cho chó Husky. Các bữa nên cách đều nhau. Không cho ăn dồn dập cũng không cho ăn thưa bữa quá.\nVới Husky từ 3-6 tháng tuổi.\nGiai đoạn này, chó Husky đã bắt đầu phát triển cơ bắp nên nhu cầu dinh dưỡng cao hơn. Bạn nên bổ sung đầy đủ các chất dinh dưỡng cho chúng qua bữa ăn hàng ngày. Chó Husky tuổi này có thể ăn các loại thực phẩm như: thịt bò, lợn, cá, trứng,… Nhưng chú ý nên nấu chín, không cho ăn đồ tươi sống. Bạn có thể giảm bữa xuống còn 3-4 bữa một ngày.\n\nCùng với thịt, bạn cũng nên cho chó Husky ăn các loại rau nhằm bổ sung vitamin và chất xơ cần thiết. Bạn không được cho chó Husky ăn xương to vì rất nguy hiểm. Nếu có cho ăn thì tốt nhất nên nghiền nhỏ, đề phòng chúng bị hóc xương.\nVới chó Husky được hơn 6 tháng tuổi.\nThời gian này, quá trình chăm sóc trở nên dễ dàng hơn. Chúng bắt đầu trưởng thành và đạt trạng thái sức khỏe tối nhất. Thời gian nuôi dưỡng này, bạn nên cho chó ăn 2-3 bữa mỗi ngày.\nKhẩu phần ăn vào độ tuổi này của chó Husky cũng phải tăng lên. Nên chú trọng các thực phẩm bổ sung canxi cho chúng. Các loại thực phẩm hay được người nuôi dưỡng dùng như: thịt, cá, nội tạng động vật, xương,… Ngoài ra, chó Husky cũng cần được bổ sung các loại rau, đậu như: củ dền, rau chân vịt, cải, bí,…\n\nNếu bạn muốn chó Husky tuổi này phát triển cơ hàm khỏe mạnh thì nên cho chúng ăn các các loại xương và đồ ăn cứng. Ngoài ra, để làm cho lông bóng mượt, bạn có thể cho chúng ăn 2-3 quả trứng vịt lộn mỗi tuần. Có thể luộc sơ qua rồi cho chúng ăn là được.\nCách chăm sóc để hạn chế những bệnh liên quan đến lông và da.\nVới mỗi chú chó, việc chăm sóc lông để tránh những căn bệnh ngoài da là cần thiết. Việc tắm rửa thường xuyên giúp bạn kiểm tra định kỳ tình trạng da của chó. Các vấn đề sẽ được phát hiện kịp thời nếu chó Husky có dấu hiệu bất thường như: ghẻ, bọ chét hay da nổi mụn đỏ, …\nBạn nên chăm sóc lông cho chó Husky thường xuyên, cắt tỉa gọn gàng để các loại vi khuẩn và bọ không có cơ hội trú ẩn trong lông. Đặc biệt, khi nuôi dưỡng chó Husky cũng phải chú ý đến độ ẩm của lông vì nó là nguyên nhân gây ra các bệnh nấm.\nTắm và chăm sóc lông cho chó Husky.\nTrong quá trình chăm sóc chó Husky, bạn nên tắm cho chúng 1-2 lần mỗi tháng. Nếu tắm quá nhiều sẽ khiến da chúng bị khô, lông có thể trở nên xơ xác. Tắm quá ít thì việc vệ sinh lông lại không được đảm bảo. Khi tắm, bạn có thể sử dụng sản phẩm sữa tắm dành riêng cho chó để lông chó Husky luôn óng ả và mượt mà.\n\nKhi tắm rửa cho chó Husky xong, bạn phải sấy khô lông cho chúng ngay lập tức. Hoặc khi thời tiết ẩm ướt, mưa kéo dài, lông chó dày và khó thoát hơi nước, bạn cũng phải chú ý đến việc sấy khô lông. Tránh để lông ẩm ướt quá lâu, chó Husky có thể bị cảm lạnh.\n\nBạn cũng nên cắt tỉa lông cho chó Husky thường xuyên để có bộ lông đẹp và gọn gàng. Việc cắt tỉa lông không chỉ mang tính thẩm mỹ cao mà còn ngăn cản sự phát triển của các vi khuẩn gây bệnh. Bạn có thể tự cắt tỉa lông tại nhà hoặc đưa chó Husky tới các cửa hàng chăm sóc thú cưng. Họ sẽ cho chó Husky nhà bạn một diện mạo ấn tượng nhất.\nMột số lưu ý về cách nuôi chó Husky ở Việt Nam.\nHusky là loài chó tuyết có nguồn gốc từ vùng đất lạnh giá. Chính vì thế,chúng quen sống với khí hậu băng tuyết, khắc nghiệt nhiều hơn. Khi chó Husky  được nuôi dưỡng ở Việt Nam, sự thay đổi môi trường sống làm chúng hay mắc những bệnh nhiệt đới như: cảm, sốt, … Chính vì thế, điều đầu tiên khi nuôi dưỡng một chú chó Husky là bạn phải cho chúng một nơi ở mát mẻ, thoáng đãng nhất có thể.\nĐồng thời, nơi ở của chó Husky phải luôn sạch sẽ. Trong những ngày nhiệt độ tăng cao thì có thể cho chúng nằm điều hòa hay quạt để giảm nhiệt độ xuống. Ngoài ra bạn có thể cho chúng ăn những loại thực phẩm mát cho cơ thể nhằm thanh lọc cơ thể và giải độc.\n\nNếu những ngày nắng nóng quá, bạn không nên cho chó Husky ra ngoài chơi vào giữa trưa nóng. Bạn có thể chờ đến tối muộn, khi nhiệt độ giảm xuống thấp nhất để đưa chúng ra ngoài chạy nhảy sau.','images/cachnuoichohusky.jpg'),(2,'HƯỚNG DẪN NUÔI MÈO MẬP MẠP & BÉO TỐT','Các chất dinh dưỡng cần thiết cho việc nuôi mèo béo:\nNước là một phần không thể thiếu cho bất kì loại động vật nào, và cả mèo cũng vậy. Đặc biệt đối với mèo, chỉ cần chúng bị mất đi khoảng 10% lượng nước trong cơ thể là sẽ có nguy cơ mắc các rối loạn về điện giải và rối loạn chức năng toàn thân.\nChính vì vậy mà chúng ta cần phải đảm bảo lượng nước hàng ngày cho chúng. Tuỳ vào thời tiết cũng như cường độ hoạt động của mèo, trung bình mèo cần từ 60-80ml nước/kg trọng lượng cơ thể trong một một ngày. Bạn có thể cho mèo uống nước trực tiếp hoặc cho thêm nước vào thức ăn bột của mèo.\nChất Béo:\nĐể nuôi mèo béo thì chúng ta không thể bỏ qua chất béo vì đây là chất khá quan trọng để giúp mèo nhanh chóng cải thiện được cân nặng. Chất béo cung cấp một nguồn năng lượng dồi dào và làm cho thức ăn có mùi vị thơm ngon hơn, kích thích vị giác của mèo.\n\nBên cạnh đó, chất béo còn cung cấp các loại vitamin tan trong mỡ như vitamin A,D,E,K. Không chỉ giúp mèo mập lên mà chất béo còn giúp những chú mèo sở hữu được một bộ lông bóng mượt và khoẻ mạnh. Các thực phẩm chứa chất béo điển hình như: Mỡ cá, trứng, bơ.. rất phù hợp để bổ sung vào khẩu phần ăn của chúng.\nProtein:\nProtein là yếu tố chính trong việc xây dựng các cơ bắp chắc khoẻ và tái tạo tế bào cho mèo. Protein có trong thịt, cá, trứng, củ quả, ngũ cốc, sữa (sữa dành cho mèo),.. Protein từ các thực phẩm này đều khác nhau, vì vậy để mèo hấp thu được những loại protein cần thiết trong việc phát triển thì đòi hỏi bạn phải cung cấp các tất cả các loại thực phẩm này một cách hợp lý trong khẩu phần ăn hàng ngày của mèo.\nTaurine:\n Một trong những axit amin quan trọng nhất có chủ yếu ở trong thịt. Hầu như không có ở các loại thực vật là Taurine. Việc thiếu taurine ở mèo có thể gây thoái hóa võng mạc trung tâm. Dẫn đến mù lòa không hồi phục, cũng như suy tim. Đây là lý do tại sao việc thêm taurine vào chế độ ăn của mèo là rất quan trọng.\n\nArginine: \nCũng như Taurine. Cơ thể mèo không thể tự tổng hợp được chất này mà chúng ta phải bổ sung cho chúng từ thức ăn hằng ngày. Arginine đóng vai trò quan trọng trong việc phân chia tế bào và chữa lành các vết thương. Tăng chức năng miễn dịch của cơ thể, loại bỏ đi amoniac ra khỏi cơ thể của mèo.\n\nMèo phải điều tiết các men cho việc tiêu hóa các protein. Vì vậy, nếu mèo bị thiếu hụt protein, enzyme của nó sẽ tự phân hủy cơ riêng của mèo. Sẽ làm cho mèo ngày càng trở nên gầy gò hơn. Vì vậy, chế độ ăn đủ đạm là rất quan trọng khi nuôi mèo béo. Một điểm lưu ý nhỏ là khi mèo ăn quá nhiều protein sẽ thải qua nước tiểu. Nhưng điều này không gây hại trầm trọng. \nVitamin:\nitamin cùng  với các khoáng chất và enzim tham gia vào quá trình trao đổi chất trong cơ thể của mèo. Ở mèo, Vitamin được chia làm 2 loại :\n\nVitamin trong mỡ (A, D, E , K) : Lưu trữ trong mô mỡ và gan rồi đào thải ra ngoài từ từ nếu dư thừa.\nVitamin tan trong nước (B, C) \n Tham khảo Gel Dinh Dưỡng\n\nMèo có thể tự tổng hợp vitamin C với số lượng vừa đủ. Giúp cho mèo phát triển khỏe mạnh và nhanh béo hơn. Vì vậy bạn không cần phải cung cấp vitamin C cho mèo.\nKhoáng chất :\nKhoáng chất là yếu tố rất cần thiết cho việc duy trì sức khoẻ và cân nặng của mèo. Canxi và Phốt pho đóng vai trò quan trọng trong việc xây dựng xương và giúp xương luôn được săn chắc. Các khoáng chất khác giúp mèo có thể duy trì được hệ thống miễn dịch, các tế bào, hồng cầu, làn da khoẻ mạnh,…\nCác chuyên gia của Hiệp hội dinh dưỡng Hoa Kỳ Feet (AAFCO) đã khuyến cáo rằng: Để nuôi mèo béo và khoẻ mạnh. Thì nên bổ sung thường xuyên các chất như canxi, phốt pho, magiê, kali, natri clorua, sắt, đồng, mangan, kẽm, iốt vào khẩu phần ăn của mèo hằng ngày”.','images/cachnuoimeo.png');
/*!40000 ALTER TABLE `cachnuoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_option`
--

DROP TABLE IF EXISTS `category_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_option` (
  `category_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_option_name` text COLLATE utf8_bin,
  PRIMARY KEY (`category_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_option`
--

LOCK TABLES `category_option` WRITE;
/*!40000 ALTER TABLE `category_option` DISABLE KEYS */;
INSERT INTO `category_option` VALUES (1,'Thức Ăn'),(2,'Phụ Kiện'),(3,'Thời Trang');
/*!40000 ALTER TABLE `category_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `category_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_product_name` text COLLATE utf8_bin,
  PRIMARY KEY (`category_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` VALUES (1,'Chó Cảnh'),(2,'Mèo Cảnh'),(3,'Hamster'),(4,'Thỏ'),(5,'Lợn Ghi-nê'),(6,'Chim Cảnh'),(7,'Cá Cảnh');
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangtinmua`
--

DROP TABLE IF EXISTS `dangtinmua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangtinmua` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `ten` text COLLATE utf8_bin,
  `sdt` text COLLATE utf8_bin,
  `title` text COLLATE utf8_bin,
  `noidung` text COLLATE utf8_bin,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangtinmua`
--

LOCK TABLES `dangtinmua` WRITE;
/*!40000 ALTER TABLE `dangtinmua` DISABLE KEYS */;
INSERT INTO `dangtinmua` VALUES (1,'Phạm Tuấn Anh','0868992467','Cần mua chó Husky ','Mình cần mua 1 bé Husky gần TPHCM hoặc Bình Dương.\r\nAi có liên hệ: 0868992467\r\nHọ tên: Phạm Tuấn Anh '),(2,'Lê Bá Vương','0903123456','Cần mua chó Corgi','Mình cần mua 1 bé Corgi gần TPHCM hoặc trong Quận Thủ Đức càng tốt.\r\nAi có liên hệ mình qua số điện thoại: 0903123456.\r\nHọ và tên: Lê Bá Vương'),(3,'Hà Thị Anh','0906123456','Cần mua chó Shiba','Mình cần mua 1 bé Shiba gần Quận 12 hoặc trong TPHCM. \r\nAi có liên hệ mình qua số điện thoại: 0906123456\r\nHọ và Tên: Hà Anh'),(4,'Trần Minh Hiếu','0909123456','Cần mua chó Pull','Mình cần mua 1 bé Pull để trông nhà và làm cảnh trong địa bàn quận Thủ Đức. \r\nAi có liên hệ mình qua số điện thoại: 0909123456\r\nHọ và Tên: Trần Minh Hiếu');
/*!40000 ALTER TABLE `dangtinmua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_category_id` int(11) NOT NULL,
  `option_category_name` text COLLATE utf8_bin,
  `option_name` text COLLATE utf8_bin,
  `option_description` text COLLATE utf8_bin,
  `option_origin` text COLLATE utf8_bin,
  `option_hoten` text COLLATE utf8_bin,
  `option_sdt` text COLLATE utf8_bin,
  `option_vitri` text COLLATE utf8_bin,
  `option_image` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `option_ngaydang` date DEFAULT NULL,
  `option_oldprice` double DEFAULT NULL,
  `option_price` double DEFAULT NULL,
  `option_stock` text COLLATE utf8_bin,
  `option_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,1,'Thức Ăn','Thức ăn cao cấp cho chó cưng','Thức ăn cao cấp dành cho thú cưng của bạn','Thái Lan','Phạm Tuấn Anh','0868992467','Bình Dương','images/thucanchocho.jpg','2020-06-20',1.4,1,'Còn Hàng',1),(2,1,'Thức Ăn','Thức ăn cao cấp cho các loại mèo','Thức ăn cao cấp cho mèo','Mỹ','Phạm Tuấn Anh','0868992467','Bình Dương','images/thucanchomeo.jpg','2020-06-20',1.2,0.7,'Còn Hàng',1),(3,2,'Phụ Kiện','Đồ chơi giải trí cho mèo','Đồ chơi giải trí cho mèo giúp bạn thư giãn, đùa giỡn với mèo cưng của mình','Trung Quốc','Hà Thị Anh','0906123456','TPHCM','images/dochoimeo.jpg','2020-06-20',1.3,0.9,'Còn Hàng',1),(4,2,'Phụ Kiện','Vòng cổ cho chó cực ngầu!','Vòng cổ cho chó với các kích thước phù hợp với chó cưng của bạn','Đức','Lê Bá Vương','0903123456','TPHCM','images/vongcocho.jpg','2020-06-22',1.3,0.7,'Còn Hàng',1),(5,3,'Thời Trang','Thời trang cho chó cưng cực chất!','Thời trang cho chó cưng của bạn với các kích thước phù hợp với thú cưng của bạn','Việt Nam','Lê Bá Vương','0903123456','TPHCM','images/thoitrangcho.jpg','2020-06-22',1.8,1.4,'Hết Hàng',1),(6,3,'Thời Trang','Thời trang cho mèo cực chất!','Thời trang cho mèo cưng của bạn với các kích thước phù hợp với mèo cưng của bạn','Việt Nam','Hà Thị Anh','0906123456','TPHCM','images/thoitrangmeo.jpg','2020-06-21',2,1.6,'Còn Hàng',1),(7,1,'Thức Ăn','Thức ăn cho Hamster đây','Thức ăn cao cấp dành cho hamster của bạn','Mỹ','Trần Minh Hiếu','0909123456','TPHCM','images/thucanchohamster.jpg','2020-06-20',2.5,2.1,'Còn Hàng',1),(8,3,'Thời Trang','Thời trang cho chó cưng cực kute!','Thời trang cho chó cưng của bạn với các kích thước phù hợp với thú cưng của bạn','Việt Nam','Trần Minh Hiếu','0909123456','TPHCM','images/thoitrangchocho.jpg','2020-06-20',2.2,1.7,'Hết Hàng',1);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_id` int(11) NOT NULL,
  `product_category_name` text COLLATE utf8_bin,
  `product_name` text COLLATE utf8_bin,
  `product_description` text COLLATE utf8_bin,
  `product_origin` text COLLATE utf8_bin,
  `product_hoten` text COLLATE utf8_bin,
  `product_sdt` text COLLATE utf8_bin,
  `product_vitri` text COLLATE utf8_bin,
  `product_image` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `product_ngaydang` date DEFAULT NULL,
  `product_oldprice` double DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_stock` text COLLATE utf8_bin,
  `product_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Chó Cảnh','Chó Husky','Chó Husky Sibir là loài chó có tầm ảnh hưởng “toàn cầu”. Chúng luôn dành được sự quan tâm đặc biệt của những người đam mê chó cảnh và tạo cảm hứng cho rất nhiều nghệ sĩ. Là giống chó kéo xe thuộc dòng Spitz, có nguồn gốc từ Đông Bắc Sibir, Nga. Loài chó này được người Chukchi Đông Bắc Á phối giống, cho ra giống chó có khả năng kéo xe đường dài tốt trong điều kiện vô cùng khắc nghiệt. Về sau Husky được đưa tới Alaska, rồi trở nên phổ biến tại Hoa Kỳ và Canada. Nhờ ngoại hình thu hút và tính cách độc đáo mà Husky dần trở thành thú nuôi được ưa chuộng trong nhiều gia đình trên thế giới.','Anh','Phạm Tuấn Anh','0868992467','Bình Dương','images/chohusky.jpg','2020-06-10',4.2,3,'Còn Hàng',1),(2,1,'Chó Cảnh','Chó Shiba Inu','Chó Shiba Inu là 1 trong 6 giống chó bản địa có nguồn gốc lâu đời của Nhật Bản. Giống chó nhỏ này trước đây từng được sử dụng chủ yếu trong các cuộc săn bắt chim và lợn rừng.\n\nTrong tiếng Nhật, tên Shiba có nghĩa là “cây bụi”, chúng được đặt tên theo bụi cây ở những nơi đi săn. Theo ngôn ngữ cổ, Shiba còn có nghĩa là nhỏ bé, có thể vì kích thước cơ thể nhỏ gọn nên được đặt tên này.\n\nShiba từng đứng bên bờ vực tuyệt chủng vì thiếu lương thực trong chiến tranh thế giới thứ 2. Số lượng còn lại được lai tạo và nhân giống sau chiến tranh và phát triển cho đến ngày nay.','Nhật Bản','Phạm Tuấn Anh','0868992467','Bình Dương','images/choshiba.jpeg','2020-06-10',7.8,6.5,'Còn Hàng',1),(3,1,'Chó Cảnh','Chó Corgi','Corgi là giống chó “Mông To Chân Ngắn” nổi tiếng có nguồn gốc từ xứ Wales. Xuất hiện từ hơn 3,000 năm trước, ban đầu Corgi được sử dụng chủ yếu vào việc chăn gia súc. Từ sau thế kỷ 16, loài chó này dần trở nên phổ biến và được nhiều gia đình nuôi làm thú cưng – Được Nữ hoàng Elizabeth đệ nhị và các thành viên trong hoàng tộc Anh đặc biệt yêu thích.\n\nTại Việt Nam, chó Corgi xuất hiện khá muộn vào năm 2010 nhưng nhanh chóng trở thành cơn sốt trong cộng đồng thú cưng.','Nhật Bản','Lê Bá Vương','0903123456','TPHCM','images/chocorgi.jpg','2020-06-10',11.2,9.5,'Còn Hàng',1),(4,2,'Mèo Cảnh','Mèo Anh','Mèo Anh là giống mèo phổ biến có nguồn gốc từ nước Anh. Được chia thành 2 dòng: Mèo Anh lông ngắn (British Shorthair) và Mèo Anh lông dài (British Longhair).\n\nXuất hiện vào khoảng năm 100 sau công nguyên, mèo Anh đã trải qua một thời gian dài lai tạo và phát triển để giữ được những đặc tính tốt nhất. Hiện chúng được nuôi cảnh rất phổ biến tại nhiều gia đình trên thế giới.','Anh','Lê Bá Vương','0903123456','TPHCM','images/meoanh.jpg','2020-06-11',13.4,11.4,'Còn Hàng',1),(5,2,'Mèo Cảnh','Mèo Ba Tư','Mèo Ba Tư (còn gọi là mèo Persian) là một giống mèo cảnh có nguồn gốc từ Ba Tư. Chúng hiện được rất nhiều người yêu thích và săn lùng.','Ả Rập','Hà Thị Anh','0906123456','TPHCM','images/meobatu.jpg','2020-06-11',12.1,12.1,'Còn Hàng',1),(6,2,'Mèo Cảnh','Mèo Munchkin','Mèo Munchkin là giống mèo có nguồn gốc từ Hoa Kỳ. Cái tên Munchkin ngày nay rất nổi tiếng với nhiều người yêu mèo trên toàn Thế giới bởi ngoại hình ngộ nghĩnh cùng đôi chân ngắn vô cùng đáng yêu. ','Anh','Hà Thị Anh','0906123456','TPHCM','images/meomunchkin.jpg','2020-06-12',11.3,10,'Hết Hàng',1),(7,3,'Hamster','Bán Chuột Hamster kute!','Chuột Hamster cực kì đáng yêu','Việt Nam','Trần Minh Hiếu','0909123456','TPHCM','images/chuothamster.jpg','2020-06-14',2.5,2,'Còn Hàng',1),(8,3,'Hamster','Bán Chuột Hamster kute đây!','Chuột Hamster cực kì đáng yêu','Việt Nam','Trần Minh Hiếu','0909123456','TPHCM','images/chuothamster2.jpg','2020-06-14',3,2.5,'Còn Hàng',1),(9,4,'Thỏ','Bán Thỏ Trắng kute đây!','Thỏ Trắng mới sinh nhỏ nhắn đáng yêu ','Việt Nam','Phạm Tuấn Anh','0868992467','Bình Dương','images/thotrang.jpg','2020-06-16',4,3.8,'Còn Hàng',1),(10,4,'Thỏ','Bán Thỏ Minilop kute đây!','Thỏ Minilop cực dễ thương và đáng yêu','Hà Lan','Phạm Tuấn Anh','0868992467','Bình Dương','images/thominilop.png','2020-06-16',4.5,4,'Còn Hàng',1),(11,5,'Lợn Ghi-nê','Bán Lợn Ghi-nê kute đây','Lợn Ghi-nê cực kỳ dễ thương và đáng yêu','Nam Mỹ','Lê Bá Vương','0903123456','TPHCM','images/longhine.jpg','2020-06-18',6,5.3,'Còn Hàng',1),(12,5,'Lợn Ghi-nê','Bán Lợn Ghi-nê kute đây','Lợn Ghi-nê cực kỳ dễ thương và đáng yêu','Nam Mỹ','Lê Bá Vương','0903123456','TPHCM','images/heoghine.jpg','2020-06-18',6,5.1,'Còn Hàng',1),(13,6,'Chim Cảnh','Bán Vẹt Bảy Màu đây!','Vẹt bảy màu biết nói tiếng người cực hay','Nam Mỹ','Hà Thị Anh','0906123456','TPHCM','images/vet.jpg','2020-06-19',8,7.5,'Còn Hàng',1),(14,6,'Chim Cảnh','Bán Vẹt Mào Vàng đây!','Vẹt mào vàng  biết nói tiếng người cực hay','Đông Timor','Hà Thị Anh','0906123456','TPHCM','images/vetmaovang.jpg','2020-06-19',7,6.4,'Còn Hàng',1),(15,7,'Cá Cảnh','Bán Cá Koi Nhật Bản đây!','Đây là một trong những loài cá cảnh đẹp nhất thế giới. Cá Koi Nhật Bản có thân hình tròn dài, vây và đuôi dài, màu sắc kết hợp tinh tế, dáng bơi uyển chuyển được nhiều người nuôi cá cảnh yêu thích.','Nhật Bản','Trần Minh Hiếu','0909123456','TPHCM','images/cacanh.jpg','2020-06-20',4.5,3.7,'Còn Hàng',1),(16,7,'Cá Cảnh','Bán Cá đuôi kiếm đây!','Cá đuôi kiếm nổi bật với chiếc đuôi dài nhọn chiếm 1/3 thân hình. Loài cá này rất hiền lành, có thể sống hòa thuận với các loại cá cảnh khác trong bể.','Nam Mỹ','Trần Minh Hiếu','0909123456','TPHCM','images/caduoikiem.jpg','2020-06-20',4.2,3.4,'Hết Hàng',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `user_Name` text COLLATE utf8_bin,
  `user_Pass` text COLLATE utf8_bin,
  `hovaten` text COLLATE utf8_bin,
  `user_sdt` text COLLATE utf8_bin,
  `user_diachi` text COLLATE utf8_bin,
  `user_role` int(11) DEFAULT NULL,
  `user_code` text COLLATE utf8_bin,
  `user_Email` text COLLATE utf8_bin,
  `user_kichhoat` int(11) NOT NULL,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tuananh','tuananh123','Phạm Tuấn Anh','0868992467','Bình Dương',1,'Admin','chienthan1999@gmail.com',1),(2,'tuananh14','tuananh14','Phạm Tuấn Anh','0868992467','Bình Dương',0,'Khách Hàng','chienthan1401@gmail.com',1),(5,'tuananh20','Cuem@123','phạm tuấn anh','0868992467','203, Huỳnh Văn Lũy',0,'79b0d486-936e-426e-bffc-f12ba7b666bc','chienthan14012@gmail.com',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 20:01:16
