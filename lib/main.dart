import 'package:saglik_motoru/saglik_motoru.dart';
import 'package:flutter/material.dart';
import 'package:studio_core/apps/apps.dart';
import 'package:uyg_adim_sayar/uyg_adim_sayar.dart';
import 'package:uyg_agirlik_antrenmani_gunlugu/uyg_agirlik_antrenmani_gunlugu.dart';
import 'package:uyg_antrenman_zamanlayici/uyg_antrenman_zamanlayici.dart';
import 'package:uyg_aralikli_oruc_takibi/uyg_aralikli_oruc_takibi.dart';
import 'package:uyg_bisiklet_takibi/uyg_bisiklet_takibi.dart';
import 'package:uyg_dis_fircalama_zamanlayici/uyg_dis_fircalama_zamanlayici.dart';
import 'package:uyg_durus_hatirlatici/uyg_durus_hatirlatici.dart';
import 'package:uyg_duvar_pilatesi/uyg_duvar_pilatesi.dart';
import 'package:uyg_esneme_rutinleri/uyg_esneme_rutinleri.dart';
import 'package:uyg_ev_egzersiz_programi/uyg_ev_egzersiz_programi.dart';
import 'package:uyg_gorme_ve_renk_korlugu_testi/uyg_gorme_ve_renk_korlugu_testi.dart';
import 'package:uyg_goz_egzersizi/uyg_goz_egzersizi.dart';
import 'package:uyg_ilac_hatirlatici/uyg_ilac_hatirlatici.dart';
import 'package:uyg_isitme_testi/uyg_isitme_testi.dart';
import 'package:uyg_kalori_sayaci/uyg_kalori_sayaci.dart';
import 'package:uyg_kilo_takibi/uyg_kilo_takibi.dart';
import 'package:uyg_kosu_takibi/uyg_kosu_takibi.dart';
import 'package:uyg_makro_besin_hesaplayici/uyg_makro_besin_hesaplayici.dart';
import 'package:uyg_nabiz_olcer/uyg_nabiz_olcer.dart';
import 'package:uyg_nefes_ve_meditasyon/uyg_nefes_ve_meditasyon.dart';
import 'package:uyg_ruh_hali_gunlugu/uyg_ruh_hali_gunlugu.dart';
import 'package:uyg_ruya_gunlugu/uyg_ruya_gunlugu.dart';
import 'package:uyg_satranc_saati/uyg_satranc_saati.dart';
import 'package:uyg_sigara_birakma/uyg_sigara_birakma.dart';
import 'package:uyg_su_icme_hatirlatici/uyg_su_icme_hatirlatici.dart';
import 'package:uyg_sukur_gunlugu/uyg_sukur_gunlugu.dart';
import 'package:uyg_tansiyon_ve_seker_gunlugu/uyg_tansiyon_ve_seker_gunlugu.dart';
import 'package:uyg_turnuva_fiksturu/uyg_turnuva_fiksturu.dart';
import 'package:uyg_uyku_gunlugu/uyg_uyku_gunlugu.dart';
import 'package:uyg_uyku_sesi_kaydi/uyg_uyku_sesi_kaydi.dart';
import 'package:uyg_vucut_kitle_indeksi/uyg_vucut_kitle_indeksi.dart';
import 'package:uyg_yoga_akislari/uyg_yoga_akislari.dart';
import 'package:uyg_30_gun_meydan_okuma/uyg_30_gun_meydan_okuma.dart';
import 'package:uyg_kafein_takibi/uyg_kafein_takibi.dart';
import 'package:uyg_yuruyus_rotalari/uyg_yuruyus_rotalari.dart';
import 'store_flavor.dart';

/// Sağlık ve Spor: 35 çevrimdışı araç tek uygulamada. Her aracın verisi
/// ayrı saklanır; reklam yalnızca bir araçtan çıkarken ve en az 3 dakika
/// arayla gösterilir.
final hubConfig = AppHubConfig(
  hubId: 'merkez-saglik-ve-spor',
  title: saglikHubTitle,
  tagline: saglikHubTagline,
  icon: Icons.favorite_rounded,
  style: saglikHubStyle,
  categories: saglikCategories,
  tools: [
    adimSayarTool,
    suIcmeHatirlaticiTool,
    kiloTakibiTool,
    vucutKitleIndeksiTool,
    uykuGunluguTool,
    antrenmanZamanlayiciTool,
    evEgzersizProgramiTool,
    nefesVeMeditasyonTool,
    kaloriSayaciTool,
    aralikliOrucTakibiTool,
    tansiyonVeSekerGunluguTool,
    ilacHatirlaticiTool,
    gozEgzersiziTool,
    satrancSaatiTool,
    turnuvaFiksturuTool,
    gormeVeRenkKorluguTestiTool,
    isitmeTestiTool,
    durusHatirlaticiTool,
    esnemeRutinleriTool,
    yogaAkislariTool,
    kosuTakibiTool,
    bisikletTakibiTool,
    agirlikAntrenmaniGunluguTool,
    makroBesinHesaplayiciTool,
    sigaraBirakmaTool,
    ruhHaliGunluguTool,
    sukurGunluguTool,
    ruyaGunluguTool,
    disFircalamaZamanlayiciTool,
    nabizOlcerTool,
    otuzGunMeydanOkumaTool,
    kafeinTakibiTool,
    yuruyusRotalariTool,
    duvarPilatesiTool,
    uykuSesiKaydiTool,
  ],
  featured: saglikFeatured,
  privacyUrl: 'https://github.com/taktemurr-ops/merkez-saglik-ve-spor/blob/main/PRIVACY.md',
);

void main() {
  registerStoreFlavor();
  bootstrapAppHub(hubConfig);
}
