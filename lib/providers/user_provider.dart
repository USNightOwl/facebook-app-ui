import 'package:facebook_app_ui/models/post.dart';
import 'package:facebook_app_ui/models/story.dart';
import 'package:facebook_app_ui/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final User _user = User(
    name: 'Nguyễn Nhật Hào',
    avatar: 'assets/images/user/facebook.jpg',
    educations: [
      Education(
        majors: 'Software Engineering',
        school: 'Trường Đại học Khoa học Tự nhiên, Đại học Quốc gia TP.HCM',
      ),
    ],
    hometown: 'Gò Công (huyện)',
    followers: 1234,
    friends: 280,
    hobbies: [
      '💻 Viết mã',
      '📚 Học tập',
      '🎮 Trò chơi điện tử',
      '🎧 Nghe nhạc',
      '📖 Đọc sách',
    ],
    socialMedias: [
      SocialMedia(
        icon: 'assets/images/github.png',
        name: 'nxhawk',
        link: 'https://github.com/nxhawk',
      ),
      SocialMedia(
        icon: 'assets/images/linkedin.png',
        name: 'Hao Nguyen',
        link: 'https://www.linkedin.com/in/hao-nguyen-97448a226/',
      ),
    ],
    stories: [
      Story(
        user: User(
          name: 'Nguyễn Nhật Hào',
          avatar: 'assets/images/user/facebook.jpg',
        ),
        image: [
          'assets/images/story/4.jpg',
          'assets/images/story/5.jpg',
          'assets/images/story/6.jpg',
          'assets/images/story/7.jpg',
        ],
        video: [
          'assets/videos/2.mp4',
          'assets/videos/1.mp4',
        ],
        time: ['1 phút'],
        shareWith: 'friends',
        name: '18+',
      ),
      Story(
        user: User(
          name: 'Nguyễn Nhật Hào',
          avatar: 'assets/images/user/facebook.jpg',
        ),
        video: [
          'assets/videos/3.mp4',
        ],
        time: ['1 phút'],
        shareWith: 'friends',
        name: '20+',
      ),
    ],
    bio: 'I am Hao',
    cover: 'assets/images/user/facebook-cover.jpg',
    guard: true,
    topFriends: [
      User(
        name: 'Khánh Vy',
        avatar: 'assets/images/user/khanhvy.jpg',
      ),
      User(
        name: 'Leo Messi',
        avatar: 'assets/images/user/messi.jpg',
      ),
      User(
        name: 'Minh Hương',
        avatar: 'assets/images/user/minhhuong.jpg',
      ),
      User(
        name: 'Bảo Ngân',
        avatar: 'assets/images/user/baongan.jpg',
      ),
      User(
        name: 'Hà Linhh',
        avatar: 'assets/images/user/halinh.jpg',
      ),
      User(
        name: 'Minh Trí',
        avatar: 'assets/images/user/minhtri.jpg',
      ),
    ],
    posts: [
      Post(
        user: User(
          name: 'Nguyễn Nhật Hào',
          avatar: 'assets/images/user/facebook.jpg',
        ),
        time: '3 phút',
        shareWith: 'public',
        content:
            '✅ 10 năm cống hiến cho bóng đá trẻ Việt Nam\n✅ Người đầu tiên đưa Việt Nam tham dự World Cup ở cấp độ U20 🌏🇻🇳\n✅ Giành danh hiệu đầu tiên cùng U23 Việt Nam tại giải U23 Đông Nam Á 2023 🏆\n\nMột người thầy đúng nghĩa với sự tận tụy cống hiến cho sự nghiệp ươm mầm những tương lai của bóng đá nước nhà. Cảm ơn ông, HLV Hoàng Anh Tuấn ❤️\n\n📸 VFF\n\n#goalvietnam #hot #HoangAnhTuan #U23Vietnam',
        image: ['assets/images/post/2.jpg'],
        like: 163,
        love: 24,
        comment: 5,
        type: 'memory',
      ),
      Post(
        user: User(
          name: 'Nguyễn Nhật Hào',
          avatar: 'assets/images/user/facebook.jpg',
        ),
        time: '3 phút',
        shareWith: 'public',
        content: 'Do you like Phở?\nBecause I can be your Pho-ever ✨✨',
        image: [
          'assets/images/post/3.jpg',
          'assets/images/post/5.jpg',
          'assets/images/post/12.jpg',
          'assets/images/post/13.jpg',
          'assets/images/post/14.jpg',
          'assets/images/post/15.jpg',
          'assets/images/post/16.jpg',
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'classic',
        type: 'memory',
      ),
      Post(
        user: User(
          name: 'Nguyễn Nhật Hào',
          avatar: 'assets/images/user/facebook.jpg',
        ),
        time: '3 phút',
        shareWith: 'public',
        content:
            'Những câu thả thính Tiếng Anh mượt mà - The smoothest pick up lines \n\n1. You wanna know who my crush is? - Cậu muốn biết crush của tớ là ai hơm?\nSimple. Just read the first word :> - Đơn giản. Cứ đọc lại từ đầu tiên\n\n2. Hey, i think my phone is broken - Tớ nghĩ điện thoại tớ bị hỏng rùi \nIt doesn’t have your phone number in it. - Vì nó không có sđt của cậu trong nàyyy \nCan you fix it? 😉 - Cậu sửa được không ha?\n\n3. According to my calculations, the more you smile, the more i fall - Theo tính toán của tớ, cậu càng cười, tớ càng đổ \n\n4. I can’t turn water into wine - Tớ không thể biến nước thành rịu\nBut i can turn you into mine - Nhưng tớ có thể biến cậu thành “của tớ” \n\n5. Can i take a picture of you? - Cho tớ chụp 1 bức hình với cậu được hem\nAh, to tell Santa what i want for Christmas this year - À để nói với ông già Noel tớ muốn quà gì dịp giáng sinh năm nay \n\nÁp dụng cho bạn thân, crush, ngừi iu hay cho zui cũng được lun 🥰',
        image: [
          'assets/images/post/3.jpg',
          'assets/images/post/4.jpg',
          'assets/images/post/5.jpg'
        ],
        like: 15000,
        love: 7300,
        comment: 258,
        haha: 235,
        share: 825,
        lovelove: 212,
        wow: 9,
        layout: 'column',
        type: 'memory',
      ),
    ],
  );

  User get user => _user;
}
