# PetFit Flutter Uygulaması

![PetFit Logo](https://i.hizliresim.com/3ah3f9i.png)

Bu repo, PetFit uygulamasının Flutter ile geliştirilmiş mobil uygulama kısmını içerir. Bu uygulama, evcil hayvan sahiplerinin evcil hayvanlarının sağlık ve bakım bilgilerini takip etmelerine yardımcı olur.

## Başlarken

Bu proje bir Flutter uygulamasının başlangıç noktasıdır. Eğer bu sizin ilk Flutter projeniz ise, başlamanıza yardımcı olacak birkaç kaynak:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

Flutter geliştirmeye başlamak için yardım almak adına, çevrimiçi belgelendirmeyi görüntüleyin. Bu belgelendirme, öğreticiler, örnekler, mobil geliştirme hakkında yönlendirmeler ve tam bir API referansı sunar.

## Kurulum

Flutter SDK'nın kurulu olduğundan ve PATH değişkeninize eklenmiş olduğundan emin olun. Daha fazla bilgi için [Flutter kurulum rehberi](https://flutter.dev/docs/get-started/install)ni ziyaret edin.

## Proje Yapısı

Bu Flutter projesi, MVC (Model-View-Controller) tasarım desenini kullanır. 

- `lib/models`: Bu dizin, uygulamanın veri modellerini içerir.
- `lib/views`: Bu dizin, kullanıcı arayüzünün tüm widget'larını içerir.
- `lib/controllers`: Bu dizin, uygulamanın tüm iş mantığını içerir.

## Servis

Bu uygulama, veri işlemleri için bir Web API servisi ile iletişim kurar. Servis, .NET Core ile geliştirilmiştir ve SQL Server veritabanı kullanır. Servis kodunu ve veritabanı şemasını [PetFitServis](https://github.com/ParsK90/PetFitServis) reposunda bulabilirsiniz.

## Katkıda Bulunma

Bu proje açık kaynaklıdır ve katkılarınızı memnuniyetle karşılarız. Katkıda bulunmadan önce lütfen [Katkıda Bulunma Rehberi](CONTRIBUTING.md)ni okuyun.

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Daha fazla bilgi için [Lisans](LICENSE) dosyasına bakın.
