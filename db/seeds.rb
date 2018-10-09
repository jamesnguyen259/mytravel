# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
DatabaseCleaner.strategy = :truncation, {:except => %w[users]}
DatabaseCleaner.clean

Address.create!([
    {name:  'Hà Nội'},
    {name: 'Hà Giang'},
    {name: 'Cao Bằng'},
    {name: 'Bắc Kạn'},
    {name: 'Tuyên Quang'},
    {name: 'Lào Cai'},
    {name: 'Điện Biên'},
    {name: 'Lai Châu'},
    {name: 'Sơn La'},
    {name: 'Yên Bái'},
    {name: 'Hòa Bình'},
    {name: 'Thái Nguyên'},
    {name: 'Lạng Sơn'},
    {name: 'Quảng Ninh'},
    {name: 'Bắc Giang'},
    {name: 'Phú Thọ'},
    {name: 'Vĩnh Phúc'},
    {name: 'Bắc Ninh'},
    {name: 'Hải Dương'},
    {name: 'Hải Phòng'},
    {name: 'Hưng Yên'},
    {name: 'Thái Bình'},
    {name: 'Hà Nam'},
    {name: 'Nam Định'},
    {name: 'Ninh Bình'},
    {name: 'Thanh Hóa'},
    {name: 'Nghệ An'},
    {name: 'Hà Tĩnh'},
    {name: 'Quảng Bình'},
    {name: 'Quảng Trị'},
    {name: 'Thừa Thiên Huế'},
    {name: 'Đà Nẵng'},
    {name: 'Quảng Nam'},
    {name: 'Quảng Ngãi'},
    {name: 'Bình Định'},
    {name: 'Phú Yên'},
    {name: 'Khánh Hòa'},
    {name: 'Ninh Thuận'},
    {name: 'Bình Thuận'},
    {name: 'Kon Tum'},
    {name: 'Gia Lai'},
    {name: 'Đắk Lắk'},
    {name: 'Đắk Nông'},
    {name: 'Lâm Đồng'},
    {name: 'Bình Phước'},
    {name: 'Tây Ninh'},
    {name: 'Bình Dương'},
    {name: 'Đồng Nai'},
    {name: 'Bà Rịa - Vũng Tàu'},
    {name: 'Hồ Chí Minh'},
    {name: 'Long An'},
    {name: 'Tiền Giang'},
    {name: 'Bến Tre'},
    {name: 'Trà Vinh'},
    {name: 'Vĩnh Long'},
    {name: 'Đồng Tháp'},
    {name: 'An Giang'},
    {name: 'Kiên Giang'},
    {name: 'Cần Thơ'},
    {name: 'Hậu Giang'},
    {name: 'Sóc Trăng'},
    {name: 'Bạc Liêu'},
    {name: 'Cà Mau'}
])
p "Created #{Address.count} addresses"

Place.create!([
    {place_name: "Tam Đảo", review_content: "Tam Đảo rất bé nên mọi chỗ tham quan chỉ trong tầm 1km, đi bộ là có thể tới hết tất cả nhé. Tất cả các điểm đều có biển chỉ dẫn.
        Tháp truyền hình
        – Để lên được tới tháp ngắm toàn cảnh thì phải leo lên 1000 bậc thang ,hai bên là cây cối hữu tình, nhưng Na chỉ leo đc tầm 300 bậc thôi là đi xuống vì đi không nổi.
        Đền bà chúa Thượng Ngàn
        – Cùng đường với tháp truyền hình nhé, lên đc chùa thì leo tầm 100 bậc thang thôi nên Na leo lên tới nơi, hai bên là rừng tre trúc lên hình đẹp lắm.
        Thác Bạc
        – Gần trung tâm luôn, xuống thác tầm 100 bậc thì sẽ tới, thác nước tầm 50m ,cảnh xung quanh là mây bao phủ nhìn thích lắm
        – Trên đường xuống thác sẽ cho thuê dép tổ ong đi xuống khỏi ướt dép, 1000 đồng /1 đôi thôi nhé
        – Nhiều quán nước hai bên để nghỉ chân, trái dừa ở đây 45k
        Cổng Trời
        – Ngay sát chợ đối diện quán rock cf. Lên cổng trời có thể quan sát được toàn cảnh Tam Đảo, là nơi để sống ảo.
        Nhà thờ Đá Cổ
        – Nằm chung chỗ với cổng trời nhé.
        – Ngoài ra các bạn có thể đi rừng quốc gia Tam Đảo nhé.", address_id: 17, user_id: 1},
    {place_name: "Đà Nẵng", review_content: "Ở đâu ở Đà Nẵng : ở Đà Nẵng có rất rất nhiều khách sạn và homestay và nhiều mức giá khác nhau.
        Mình thì thích ở trên đường Phạm Văn Đồng, con đường này hầu như chỉ toàn là khách sạn dọc 2 bên đường, vị trí khá đẹp vì gần biển Mỹ Khê có 500m, gần cầu Sông Hàn 500m, gần Cầu Rồng 1Km, và gần luôn nhà ga 1Km.
        Vẫn book trên booking.com cho giá nó rẻ.
        - Di chuyển ở Đà Nẵng thì mình vẫn thích đi xe máy hơn, thuê 100K/ngày vừa rẻ mà lại vi vu thoải mái, đi taxi thì bất tiện quá.
        --------------
        TRẢI NGHIỆM GÌ Ở ĐÀ NẴNG ? 
        Đà Nẵng rất ư đầu tư cho du lịch, mọi địa điểm hầu như luôn hướng tới khách du lịch.
        Bạn có thể ghé qua những địa điểm sau :
        1. Bà Nà Hills : Đây chắc là địa điểm đứng đầu rồi, vé 600K/người : mà thấy lúc nào cũng đông, mỗi ngày tầm 8,000 ~ 10,000 người lên đây, con số kinh khủng đúng không.
        Nhưng thực sự, ông chủ ở đây rất biết đầu tư cho du lịch.
        2. Bãi biển Mỹ Khê : 1 trong 10 bãi biển quyến rũ nhất hành tinh, bãi biển đẳng cấp quốc tế, cực sạch.
        3. Cầu khoá tình yêu : đường Trần Hưng Đạo
        4. Đèo Hải Vân ( xa trung tâm ) : nhưng nên đi đông người.
        5. Cầu sông Hàn : cầu xoay được.
        6. Chùa Linh Ứng 
        7. Vòng quay mặt trời
        8. Bán đảo Sơn Trà 
        9. Cầu Rồng ( phun nước và phun lửa vào mỗi 9h đêm thứ 7 và chủ nhật
        10. Cung thiếu nhi Đà Nẵng 
        11. Công viên Châu Á 
        13. Ngũ hành sơn ( cách trung tâm thành phố ĐN 7km) 
        14. Du thuyền dọc sông Hàn vào buổi đêm
        15. Chợ đêm Hội An (gần cung thiếu nhi) : nhưng chỉ diễn ra vào chủ nhật (khoảng 1~2 tuần/lần)", address_id: 32, user_id: 2, views_number: 4},
    {place_name: "Biển Lăng Cô", review_content: "Điểm tham quan
        Đi biển thì tất nhiên tắm biển là số một rồi, nhất là với một bãi biển đẹp thuần khiết như ở Lăng Cô. Thế nhưng cũng thật tiếc nếu bạn bỏ lỡ một số điểm thú vị sau khi ở Lăng Cô:
        - Có thể đi chợ bằng xe ôm, hoặc thuê xe máy ở lễ tân các khu resort. Ở đó có thể mua tông Lào, quần áo, thắt lưng đánh từ Lào về, khá rẻ. Sau đó bạn nên dạo xe máy trên cung đường du lịch ven đầm Lập An, một bên đầm một bên núi sẽ rất thi vị và có những kỷ niệm không bao giờ quên. Tha hồ chụp ảnh và ngắm cảnh. Đầm này đáy toàn là vỏ trai ốc, không có bùn, nên lội ra rất xa cũng chỉ đến bắp chân thôi, nước trong vắt.
        - Bãi biển Chân Mây: bãi Chân Mây bằng phẳng kéo dài hình vòng cung, cát trắng và sóng hiền hòa, cách quốc lộ 1A chỉ gần 3km. Bãi tắm ở đây rất đẹp tuy nhiên nếu tắm ở đây bạn phải lưu ý sẽ không có người cứu hộ túc trực, không có hệ thống cảnh báo nguy hiểm.
        - Đèo Hải Vân: Bắt đầu từ Hải Vân Quan, địa phận của tỉnh Thừa Thiên Huế trên đèo Hải Vân, kéo dài đến vườn quốc gia Bạch Mã chỉ vỏn vẹn chưa đầy 60km nhưng bảo đảm bạn sẽ ngất ngây với những gì trước mắt. Đổ đèo Hải Vân, bạn có thể quan sát vịnh Lăng Cô, đường dẫn vào hầm Hải Vân từ trên cao.
        Chạy hết đèo, bạn sẽ đến ngã ba để ra quốc lộ 1A, tuy nhiên, bạn không nên chạy đường này mà hãy rẽ trái vào đường Nguyễn Văn để có thể ngắm toàn cảnh đầm Lập An vô cùng đẹp và thơ mộng. Trên đường có nhiều quán hải sản được dựng ngay trên đầm, bạn có thể nghỉ chân vừa thưởng thức hải sản, vừa ngắm cảnh rất tuyệt vời.
        - Vườn quốc gia Bạch Mã: Cách Lăng Cô khoảng 30 km về phía Tây, Bạch Mã nổi tiếng có khí hậu mát mẻ. Nhiệt độ chưa bao giờ dưới 4 độ C và cao hơn 26 độ C. Tại đây, bạn có thể dạo bộ thưởng thức không khí của núi rừng bạch mã, thăm quan cụm thác Ngũ Hổ, thác Đỗ Quyền, chinh phục đỉnh Bạch Mã, tham quan Vọng Hải Đài 
        (từ đây chiêm ngưỡng toàn cảnh vịnh Chân Mây và đầm Cầu Hai).", address_id: 31, user_id: 2, views_number: 60},
    {place_name: "Vườn quốc gia Phong Nha - Kẻ Bàng", review_content: "Phong Nha Kẻ Bàng gắn liền với những chiến tích anh hùng lịch sử. Nơi đây, là sự giao thoa giữa rừng nguyên sinh và sông Son, cùng với động nước khô và động nước tạo nên bức tranh thủy mặc làm say lòng du khách. Phong Nha, Kẻ Bàng được tổ chức văn hóa thế giới UNESCO công nhận là di sản thiên nhiên thế giới.
        Du lịch Phong Nha - Kẻ Bàng
        Kinh nghiệm du lịch Phong Nha – Kẻ Bàng
        Du lịch Phong Nha thời điểm nào? Thời gian lý tưởng đi Phong Nha Kẻ Bàng
        Nên đi Phong Nha, Kẻ Bàng vào mùa nào, tháng mấy? Quảng Bình thuộc vùng khí hậu nhiệt đới gió mùa với hai mùa rõ rệt:
        
        + Mùa khô (từ tháng 4 – 8): Nhiệt độ ở bên ngoài là 36-37°C thì nhiệt độ trong hang động luôn ở 20-21°C rất mát mẻ dễ chịu. Đây là thời gian khá thuận lợi để tham gia vào những chuyến khám phá hang động trong lòng di sản thiên nhiên thế giới Phong Nha – Kẻ Bàng.
        
        + Mùa mưa (từ tháng 9 đến tháng 3 năm sau): Đặc trưng là gió mùa Đông Bắc, lượng mưa trung bình từ 2.000mm – 2.300mm/năm. Vào mùa nước lớn, nước sông Son dâng cao sẽ làm che khuất cửa hang, thuyền du lịch không vào đây được nên không thể tham quan được Động Phong Nha. Các động khô: Động Tiên sơn , Động Thiên Đường vẫn tham quan bình thường. Kinh nghiệm du lịch Phong Nha – Kẻ Bàng, Quảng Bình các bạn lưu ý cần lên lịch trình cũng như trang phục và chuẩn bị dụng cụ, quần áo phù hợp.
        
        => Do đó thời gian du lịch Phong Nha – Kẻ Bàng thích hợp nhất từ tháng 4 đến tháng 8 vì thời tiết khá thuận lợi cho việc tham quan và du lịch.", address_id: 29, user_id: 3},
    {place_name: "Phố cổ Hà Nội", review_content: "Nhắc đến Hà Nội, người ta không chỉ nghĩ đến Lăng Bác, hồ Gươm, hồ Tây mà cũng sẽ có rất nhiều người nhớ về phố cổ. Được xem là cái nôi lưu giữ những gì cổ kính, hoài niệm một thời vẫn còn vẹn nguyên những nét trầm mặc theo dòng xoáy thời gian và chính điều này đã trở thành lý do thôi thúc nhiều lữ khách đến thăm nơi đây một lần trong đời.
        Phố cổ Hà Nội tọa lạc ở phía Tây Bắc quận Hoàn Kiếm, sở hữu vị trí trung tâm, đắc địa của Thủ đô. Nhắc tới phố cổ Hà Nội, không ai không biết tới địa danh 36 phố phường. Mỗi con phố lưu giữ những nét đặc trưng của đất kinh kỳ, những ký ức về lịch sử, con người và đất nước. Trải qua bao thăng trầm, những con phố ấy vẫn còn tồn tại vẹn nguyên đến tận bây giờ. 
        Từ xa xưa, phố cổ là tên gọi của một khu đô thị, được hình thành từ đời Lý – Trần, nằm ở phía Đông Hoàng thành Thăng Long ra đến sát sông Hồng. Trước đây, các làng nghề bao quanh Thăng Long, tập trung buôn bán, mỗi con phố là một làng nghề khác nhau mang dấu ấn riêng biệt của cư dân thành thị và cùng trao đổi lẫn nhau trong cuộc sống đời thường. Chính vì vậy, ngày nay chúng ta thấy những con đường trong khu phố cổ đều có từ “Hàng” đặt ở đầu. Đến đây, bạn đã lý giải được thắc mắc tại sao phố cổ Hà Nội lại có 36 phố phường mang tên “Hàng” rồi nhỉ?
        Một góc phố Hàng Mã. Ảnh: Tuấn Đức
        Những con phố mang tên “Hàng” giờ ra sao?
        Khu phố cổ khá rộng, do vậy phải tận dụng hết thời gian mới khám phá trọn vẹn trong chuyến du lịch Hà Nội. Đi qua con phố Hàng Mã, bạn sẽ thấy những cửa hàng chuyên bán các mặt hàng thờ cúng, vàng mã, hay Hàng Thiếc bày bán những đồ gia dụng được làm từ vật liệu thiếc. 
        Trước đây, hầu như tất cả những con phố đều chuyên bán một loại mặt hàng mang thương hiệu riêng nhưng hiện tại cũng có một số tuyến phố xuất hiện những mặt hàng mới không theo nguyên tắc xưa. Minh chứng như tuyến phố Hàng Quạt, nếu như trước đây buôn bán quạt và đàn, nay được kinh doanh thêm mặt hàng như tranh thêu, câu đối… 
        Khu phố cổ Hà Nội. Ảnh Ngọc Nguyễn
        Nét cổ kính hoài niệm ở phố cổ Hà Nội
        Đi qua phố cổ, du khách bắt gặp hình ảnh những ngôi nhà rêu phong theo thời gian, giờ đây vẫn hiên ngang trước bao đổi thay của không gian và thời gian. Những ngôi nhà được xây dựng vào đầu thế kỷ XX, với những lối đi nhỏ bên trong căn nhà và gạch xây dựng đã trở nên cũ kỹ là khung cảnh quen thuộc chẳng lẫn vào đâu giữa lòng Thủ đô. 
        Đến thăm nơi đây, du khách không nên bỏ qua những ngôi đền, chùa cổ kính như đền Mã Mây, đền Bà Chúa, chùa Cầu Đông, chùa Kim Cổ… Lữ khách còn có cơ hội tham quan cửa ô Quan Chưởng – dấu mốc của một thời kỳ vàng son của Thủ đô ngàn năm văn hiến. 
        Nét cổ kính của Ô Quan Chưởng - Ảnh Linh Nguyễn
        Nếu hỏi có hình ảnh nào gắn liền với phố cổ để người ta cảm nhận rõ rệt nhất một Hà Nội đơn sơ, bình dị và đẹp đẽ thì chỉ đơn giản là gánh hàng rong, xe tào phớ với tiếng leng keng khắp các nẻo phố hay vị thơm ngon của tô bún thang hoặc bát phở bốc khói nghi ngút vào mỗi sáng sớm cũng làm say đắm bao con tim du khách để phải dừng chân lại ngắm nhìn và thưởng thức.
        Phố cổ Hà Nội không chỉ lưu giữ mà thực ra cũng chính là linh hồn của Thủ đô. Đối lập với vẻ hào nhoáng xa hoa, rực rỡ cùng những công trình kiến trúc hiện đại là phố cổ giản dị và bình yên đến lạ. Một chút lặng lẽ, một chút thanh tao đã thôi thúc bao lữ khách dừng chân lưu luyến mỗi độ về với Thủ đô yêu thương.", address_id: 1, user_id: 6, views_number: 100},
    {place_name: "Hồ Hoàn Kiếm", review_content: "Điểm đến không thể bỏ qua với khách du lịch đến Hà Nội. 
        Những hoạt động đáng chú ý:
        - Từ tối thứ 6 đến hết tối chủ nhật, khu vực ven hồ này là khu phố đi bộ và có nhiều hoạt động văn hóa, ca nhạc đường phố rất thú vị.
        - Đặc biệt dễ chịu và sáng sớm và chiều từ 16:00. Nếu muốn ngắm cảnh thì nên đi vào sáng sớm, chiều tối rất đông người. 
        - Vào dịp cuối tuần có thể kết hợp đi bộ khu này với khu vực phố đi bộ Tạ Hiện, Lương Ngọc Quyến. 
        - Gửi xe ở khu vực phía sau tượng đài Lý Thái Tổ hoặc Hàng Trống là khá thuận tiện cho việc di chuyển", address_id: 1, user_id: 6, views_number: 1005},
    {place_name: "hồ Đại Lải", review_content: "1. Giới thiệu đôi nét về hồ Đại Lải
“Đại Lải” theo tiếng dân tộc Sán Dìu có nghĩa là hồ lớn. Đây là một hồ nước nhân tạo nằm trên địa bàn Ngọc Thanh và Đồng Xuân thuộc thị xã Phúc Yên, tỉnh Vĩnh Phúc.

Ban đầu, hồ được đào nhằm mục đích lấy nước tưới tiêu phục vụ nông nghiệp cho các huyện trong tỉnh. Sau này, khu vực hồ được đưa vào khai thác du lịch.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Hồ Đại Lải – nơi nghỉ mát lý tưởng

Hiện nay, khu vực hồ Đại Lải là khu nghỉ dưỡng và du lịch xanh với hàng loạt khách sạn, nhà hàng, khu vui chơi giải trí bao quanh hồ. Hồ rộng lớn với diện tích mặt nước là 525ha, chứa khoảng 26,4 triệu mét khối nước. Xung quanh hồ là cánh rừng phòng hộ rộng lớn lên đến 9.000ha.

Giữa hồ còn có đảo Chim nổi lên rộng tới 4,8ha, cây cối mọc um tùm, xanh tươi. Vào mùa đông, hàng loạt các loài chim từ nơi khác tụ hội tạo nên bức tranh thiên nhiên vừa hoang sơ và đầy sinh động.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Đảo Chim giữa hồ Đại Lải

Những năm trở lại đây, khu vực hồ Đại Lải được quy hoạch lại, trở thành điểm nghỉ mát cuối tuần lý tưởng cho du khách gần xa. Nhiều khách sạn từ 1 sao đến 3 sao được xây dựng tiện nghi với giá cả hợp lý. Các nhà hàng, khu vui chơi giải trí cũng mọc lên càng nhiều.

Chuyến du lịch sắp tới, nếu không chọn những địa điểm du lịch đẹp nhất Hà Nội thì du khách có thể chọn Hồ Đại Lải.

2. Thời điểm lý tưởng để ghé thăm hồ Đại Lải
Khu du lịch hồ Đại Lải có khí hậu ôn hòa, mát mẻ. Du khách có thể ghé thăm hồ vào mùa hè hoặc mùa đông vì thời tiết khá dễ chịu. Phía Tây Bắc của hồ có dãy Tam Đảo và các ngọn núi như Mỏ Quạ, Cột Cờ, Thằn Lằn… che chắn nên ít chịu ảnh hưởng của không khí lạnh vào mùa đông.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Du khách nên ghé thăm hồ Đại Lải vào mùa hè hoặc mùa đông

Xung quanh hồ là những cánh rừng xanh biếc ngút ngàn, nước hồ trong veo mát rượi. Nhiệt độ trung bình vào mùa hè ở đây khoảng 28,9oC, thời tiết không nóng và oi bức như những nơi khác.

Đến thăm hồ Đại Lải vào những tháng mùa đông hoặc mùa hè, du khách đều có thể thoải mái tận hưởng những phút giây thoải mái.

Nếu có dịp đi Tour du lịch Hà Nội du khách nhớ dành thời gian ghé thăm hồ Đại Lải.

3. Hướng dẫn đường đi hồ Đại Lải bằng xe máy
Có nhiều phương tiện đưa du khách đến với hồ Đại Lải, trong đó xe máy là phương tiện được nhiều người lựa chọn nhất. Hồ Đại Lải cách thành phố Vĩnh Yên khoảng 15km về hướng Đông. Từ trung tâm Vĩnh Yên, du khách có thể đi theo tuyến Quốc lộ 2 - Hương Sơn - đường tỉnh 310 để đến khu du lịch Hồ Đại Lải.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Du khách đến hồ Đại Lải bằng xe máy

Hồ Đại Lải cách Hà Nội khoảng 50km về phía Bắc. Nếu di chuyển từ trung tâm thủ đô Hà Nội, du khách có thể đi theo hướng sân bay Nội Bài. Qua sân bay, du khách đi tiếp Quốc lộ 2A hướng về Phúc Yên rồi rẽ phải theo đường TL301 khoảng 10km nữa sẽ đến khu du lịch Hồ Đại Lải.

4. Hồ Đại Lải – Điểm du lịch hấp dẫn
Hồ Đại Lải là nơi nghỉ mát lý tưởng cho những du khách ưa khám phá. Khung cảnh trên hồ đẹp như một bức tranh. Đến đây du khách có thể đi dạo, ngắm cảnh hay ngồi nghỉ mệt trên những ghế đá ven đường.

Sau khi ngắm cảnh hồ Đại Lải, du khách có thể thuê ca nô hoặc thuyền để ra thăm đảo Chim hay còn gọi là đảo Ngọc ở giữa hồ. Du khách sẽ có cơ hội ngắm nhìn hàng ngàn loài chịm hội tụ ở đây trong những buổi chiều tà.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Quang cảnh xung quanh hồ Đại Lải

Những đôi uyên ương yêu nhau có thể thuê thuyền đạp vịt ra đảo Chim, để tận hưởng cảm giác thư thái giữa mênh mông sông nước và khám phá nhiều cảnh quan kỳ thú quanh hồ. Hoặc du khách có thể tản bộ thong dong khám phá đỉnh núi Thằn Lằn hay phóng tầm mắt thu về trọn vẹn hình ảnh thành phố thủ đô.

Ngoài ra, hồ Đại Lải còn là một điểm cắm trại lý tưởng. Xung quanh hồ có nhiều bãi cỏ xanh mơn mởn, thoáng mát. Du khách có thể thuê lều trại và làm tiệc “buffet” ngoài trời tại đây. Nếu muốn chu đáo hơn thì du khách nên mang theo loa thùng, thức ăn làm sẵn, nước uống… để thỏa sức vui chơi.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Cắm trại là hoạt động ưa thích của nhiều người

5. Địa điểm lưu trú khi đến du lịch hồ Đại Lải
Lựa chọn địa điểm lưu trú nào khi đi du lịch là điều mà nhiều du khách quan tâm. Là khu du lịch nổi tiếng nên Đại Lải không thiếu các điểm lưu trú cho du khách ghé thăm. Điều quan trọng là du khách phải biết lựa chọn điểm lưu trú nào phù hợp với “túi tiền” của mình.

Nếu có điều kiện thì du khách có thể chọn khu nghỉ dưỡng Flamingo Đại Lải để nghỉ ngơi, thư giãn. Đây là khu nghỉ dưỡng đẹp bởi sự kết hợp hài hòa cảnh sắc thiên nhiên và cuộc sống con người.

Các dịch vụ trong khu nghỉ dưỡng khá đầy đủ và tiện nghi gồm hồ bơi, sân golf, quán bar, massage, tenis... Du khách chắc chắn sẽ có những phút giây thư giãn thoải mái khi lưu trú ở Flamingo Đại Lải.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Flamingo Đại Lải Resort

Nếu “túi tiền” hạn hẹp thì du khách có thể lựa chọn những điểm lưu trú xa khu du lịch một chút, ví dụ như khách sạn Thắng Lợi Tam Đảo (khu 1, Tam Đảo, Vĩnh Phúc), khách sạn Sông Hồn (189 Lam Sơn, Vĩnh Yên, Vĩnh Phúc), khách sạn Hưng Hải (khu A, hồ Đại Lải, Ngọc Thanh, Phúc Yên, Vĩnh Phúc), khách sạn Family Transit (gần sân bay Nội Bài) v.v..

6. Ăn uống khi đi du lịch hồ Đại Lải
Đến với hồ Đại Lải du khách sẽ có cơ hội thưởng thức nhiều món ăn dân dã của núi rừng Tây Bắc như cơm lam, gà đồi, cá nướng, nộm ngó, gà rang muối, lợn mán, cá chép hồ Đại Lải…. Đặc biệt nổi tiếng nhất ở đây là món thịt trâu.

Thịt trâu Đại Lải ăn dai và giòn hơn so với những nơi khác. Người dân Vĩnh Phúc thường nói vui thế này “Su su Tam Đảo, cá thính Lập Thạch, thịt trâu Xuân Hòa” khi nhắc đến đặc sản của địa phương mình. Du khách đến Đại nhất định phải thử các món chế biến từ thịt trâu.

kinh nghiem du lich ho dai lai tu tuc bang xe may

Thịt trâu – đặc sản thơm ngon của Đại Lải

7. Những lưu ý khi du lịch hồ Đại Lải bằng xe máy
- Kiểm tra, bảo dưỡng kỹ xe máy trước khi lên đường: phanh, lốp, sên nhông dĩa, bạc đạn, gương, ắc quy, đèn, xi nhan, bugi, kính chiếu hậu, đèn chiếu sáng...

- Mang đầy đủ giấy tờ tùy thân như giấy đăng ký xe, bảo hiểm xe máy, chứng minh nhân dân, bằng lái xe...

- Mang theo hộp dụng cụ sửa xe, ghi lại các địa chỉ và số điện thoại của tiệm sửa xe trên cung đường phượt đến Hồ Đại Lải.

- Chuẩn bị mũ bảo hiểm an toàn, găng tay, khẩu trang, kính mát, giày ba ta, vớ, khăn choàng cổ, áo mưa...

kinh nghiem du lich ho dai lai tu tuc bang xe may

Du khách nên phượt theo nhóm đông để dễ dàng hỗ trợ cho nhau

- Nên đi nhóm đông người và chạy cách nhau ở cự li gần, nhằm tránh những trường hợp không hay xảy ra.", address_id: 17, user_id: 1, views_number: 10},
])
p "Created #{Place.count} place reivews"

PlacePicture.create!([
    {picture: "tamdao.png", place_id: 1},
    {picture: "tamdao2.jpg", place_id: 1},
    {picture: "tamdao3.jpg", place_id: 1},
    {picture: "danang.jpg", place_id: 2},
    {picture: "cau-rong-da-nang.jpg", place_id: 2},
    {picture: "langco.jpg", place_id: 3},
    {picture: "langco2.jpg", place_id: 3},
    {picture: "phongnha.jpg", place_id: 4},
    {picture: "phongnha2.jpg", place_id: 4},
    {picture: "phoco.jpg", place_id: 5},
    {picture: "phoco2.jpg", place_id: 5},
    {picture: "hoguom.jpg", place_id: 6},
    {picture: "hoguom2.jpg", place_id: 6},
    {picture: "hodailai.jpg", place_id: 7},
    {picture: "hodailai2.jpg", place_id: 7},
])
p "Created #{PlacePicture.count} pictures of place"