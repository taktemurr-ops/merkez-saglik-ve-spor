# Sağlık ve Spor · Health & Fitness (merkez-saglik-ve-spor)

Sağlık ve Spor ailesinin **merkez uygulaması**: 33 çevrimdışı aracı tek uygulamada toplar.
Görünüm oyun merkezlerinin onaylı tasarım dilini izler (koyu degrade zemin, "33 Uygulama",
yuvarlak arama, vurgu çerçeveli kutular). Alt gezinme: Ana Sayfa · Uygulamalar · Favoriler · Profil.

- Çatı: [studio-core](https://github.com/taktemurr-ops/studio-core) `lib/apps` · Motor: [saglik-motoru](https://github.com/taktemurr-ops/saglik-motoru)
- 33 dil · telefon, tablet, web · çevrimdışı
- Reklamsız / Premium satın alma; ödüllü reklam isteğe bağlı ekstralar için; geçiş reklamı yalnızca
  bir araçtan çıkarken ve en az 3 dakika arayla.
- Bütün araçlar `AppDisclaimer.wellness` bandını gösterir ("tıbbi cihaz değildir"). Play Console'da
  **Sağlık uygulamaları beyanı** ve Veri güvenliği formu doldurulmalıdır.
- Yeme bozukluğu koruması: kalori hedefi 1200 (kadın) / 1500 (erkek) kcal altına inmez, hedef kilo VKİ 18,5
  altına ayarlanamaz, oruç planı 20 saati aşmaz; beslenme araçlarında destek bilgisi görünür.
- Ruh hali günlüğü: kriz sözcüklerinde ve "çok kötü" seçiminde ülkeye göre acil numara, bilinen ücretsiz
  destek hattı ve findahelpline.com bağlantısı gösterilir; tanı dili yok.
- Diş fırçalama (çocuk): reklam, ödüllü reklam ve satın alma yok; araçtayken ve çıkarken geçiş reklamı
  susturulur. Ayrı yayımlanacaksa **Families politikası** (`AdsService.init(child: true)`, Families
  sertifikalı reklam SDK'sı) uygulanmalıdır.
- İzinler: etkinlik tanıma (adım), kamera (nabız tahmini), konum yalnızca ön planda (koşu/bisiklet),
  bildirim. Arka plan konumu, ön plan hizmeti ve kesin alarm istenmez.
- Nabız ölçer "eğlence/esenlik amaçlı tahmin" olarak sunulur (iOS 1.4.1 riski: reddedilirse yalnız Android).
- Görme/renk ve işitme testleri özgün desen ve tonlar kullanır (Ishihara kopyası yok, dB HL iddiası yok).
- Mevcut 7 depo taşındı: app-001-health-universe, app-002-fitness-universe, app-003, app-004, app-005,
  app-006, app-013 (geçmişleri korunarak; eski kod git geçmişinde).

| Araç | Depo |
|---|---|
| Adım Sayar | [uyg-adim-sayar](https://github.com/taktemurr-ops/uyg-adim-sayar) |
| Su İçme Hatırlatıcı | [app-003](https://github.com/taktemurr-ops/app-003) (→ `uyg-su-icme-hatirlatici`) |
| Kilo Takibi | [uyg-kilo-takibi](https://github.com/taktemurr-ops/uyg-kilo-takibi) |
| Vücut Kitle İndeksi | [uyg-vucut-kitle-indeksi](https://github.com/taktemurr-ops/uyg-vucut-kitle-indeksi) |
| Uyku Günlüğü | [app-004](https://github.com/taktemurr-ops/app-004) (→ `uyg-uyku-gunlugu`) |
| Antrenman Zamanlayıcı | [uyg-antrenman-zamanlayici](https://github.com/taktemurr-ops/uyg-antrenman-zamanlayici) |
| Ev Egzersiz Programı | [uyg-ev-egzersiz-programi](https://github.com/taktemurr-ops/uyg-ev-egzersiz-programi) |
| Nefes ve Meditasyon | [uyg-nefes-ve-meditasyon](https://github.com/taktemurr-ops/uyg-nefes-ve-meditasyon) |
| Kalori Sayacı | [app-005](https://github.com/taktemurr-ops/app-005) (→ `uyg-kalori-sayaci`) |
| Aralıklı Oruç Takibi | [uyg-aralikli-oruc-takibi](https://github.com/taktemurr-ops/uyg-aralikli-oruc-takibi) |
| Tansiyon ve Şeker Günlüğü | [app-001-health-universe](https://github.com/taktemurr-ops/app-001-health-universe) (→ `uyg-tansiyon-ve-seker-gunlugu`) |
| İlaç Hatırlatıcı | [app-013](https://github.com/taktemurr-ops/app-013) (→ `uyg-ilac-hatirlatici`) |
| Göz Egzersizi | [uyg-goz-egzersizi](https://github.com/taktemurr-ops/uyg-goz-egzersizi) |
| Satranç Saati | [uyg-satranc-saati](https://github.com/taktemurr-ops/uyg-satranc-saati) |
| Turnuva Fikstürü | [uyg-turnuva-fiksturu](https://github.com/taktemurr-ops/uyg-turnuva-fiksturu) |
| Görme ve Renk Testi | [uyg-gorme-ve-renk-korlugu-testi](https://github.com/taktemurr-ops/uyg-gorme-ve-renk-korlugu-testi) |
| İşitme Testi | [uyg-isitme-testi](https://github.com/taktemurr-ops/uyg-isitme-testi) |
| Duruş Hatırlatıcı | [uyg-durus-hatirlatici](https://github.com/taktemurr-ops/uyg-durus-hatirlatici) |
| Esneme Rutinleri | [uyg-esneme-rutinleri](https://github.com/taktemurr-ops/uyg-esneme-rutinleri) |
| Yoga Akışları | [uyg-yoga-akislari](https://github.com/taktemurr-ops/uyg-yoga-akislari) |
| Koşu Takibi | [uyg-kosu-takibi](https://github.com/taktemurr-ops/uyg-kosu-takibi) |
| Bisiklet Takibi | [uyg-bisiklet-takibi](https://github.com/taktemurr-ops/uyg-bisiklet-takibi) |
| Ağırlık Antrenmanı Günlüğü | [app-002-fitness-universe](https://github.com/taktemurr-ops/app-002-fitness-universe) (→ `uyg-agirlik-antrenmani-gunlugu`) |
| Makro Besin Hesaplayıcı | [app-006](https://github.com/taktemurr-ops/app-006) (→ `uyg-makro-besin-hesaplayici`) |
| Sigara Bırakma | [uyg-sigara-birakma](https://github.com/taktemurr-ops/uyg-sigara-birakma) |
| Ruh Hali Günlüğü | [uyg-ruh-hali-gunlugu](https://github.com/taktemurr-ops/uyg-ruh-hali-gunlugu) |
| Şükür Günlüğü | [uyg-sukur-gunlugu](https://github.com/taktemurr-ops/uyg-sukur-gunlugu) |
| Rüya Günlüğü | [uyg-ruya-gunlugu](https://github.com/taktemurr-ops/uyg-ruya-gunlugu) |
| Diş Fırçalama Zamanlayıcı | [uyg-dis-fircalama-zamanlayici](https://github.com/taktemurr-ops/uyg-dis-fircalama-zamanlayici) |
| Nabız Tahmini (Kamera) | [uyg-nabiz-olcer](https://github.com/taktemurr-ops/uyg-nabiz-olcer) |
| 30 Gün Meydan Okuma | [uyg-30-gun-meydan-okuma](https://github.com/taktemurr-ops/uyg-30-gun-meydan-okuma) |
| Kafein Takibi | [uyg-kafein-takibi](https://github.com/taktemurr-ops/uyg-kafein-takibi) |
| Yürüyüş Rotaları | [uyg-yuruyus-rotalari](https://github.com/taktemurr-ops/uyg-yuruyus-rotalari) |
