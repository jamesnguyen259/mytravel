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
        – Ngoài ra các bạn có thể đi rừng quốc gia Tam Đảo nhé.", address_id: 17, user_id: 1, views_number: 13},
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
        (từ đây chiêm ngưỡng toàn cảnh vịnh Chân Mây và đầm Cầu Hai).", address_id: 31, user_id: 2, views_number: 60}
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
])
p "Created #{PlacePicture.count} pictures of place"