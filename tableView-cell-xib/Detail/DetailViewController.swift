//
//  DetailViewController.swift
//  tableView-cell-xib
//
//  Created by Soner Demirci on 14.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: - UI Elements
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var profilImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    //MARK: Propeirtes
    var receivedData: Poets?
    var poetDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareData()
        setupUI()
    }
    
    func setupUI(){
        nameLbl.text = receivedData?.name
        profilImg.image = receivedData?.image
        descriptionLbl.text = poetDescription ?? ""
        configure()
    }
    
    func configure(){
        profilImg.layer.cornerRadius = 100
        profilImg.contentMode = .scaleAspectFill
    }
    
    func prepareData(){
        switch receivedData?.id {
        case 0:
            poetDescription = PageString.poetRasimOzdenoren.rawValue
        case 1:
            poetDescription = PageString.poetNuriPakdil.rawValue
        case 2:
            poetDescription = PageString.poetAliKutlay.rawValue
        case 3:
            poetDescription = PageString.poetAlaeddinOzdenoren.rawValue
        case 4:
            poetDescription = PageString.poetCahitZarifoglu.rawValue
        case 5:
            poetDescription = PageString.poetSezaiKarakoc.rawValue
        case 6:
            poetDescription = PageString.poetErdemBeyazit.rawValue
        default:
            break
        }
    }

}


//MARK: - Mock data
enum PageString: String {
    case poetRasimOzdenoren = "Rasim Özdenören 20 Mayıs 1940 tarihinde Kahramanmaraş’ta dünyaya geldi. Türk öykü ve deneme yazarı Rasim Özdenören Alaaddin Özdenören’in ikiz kardeşidir.İlk ve orta öğrenimini Kahramanmaraş, Malatya ve Tunceli gibi Güney ve Doğu illerinde bitirmiştir. Rasim Özdenören üniversite eğitimini İstanbul Üniversitesi hukuk Fakültesi’nde almıştır. Yedi Güzel Adam şairi Rasim Özdenören Devlet Planlama Teşkilatı’nda görev almıştır. Rasim Özdenören Cumhurbaşkanlığı Kültür ve Sanat Büyük Ödülü’ne sahiptir."
    
    case poetNuriPakdil = "Nuri Pakdil, 1934 yılında Kahramanmaraş'ta dünyaya geldi. Lise eğitiminin ardından İstanbul Üniversitesi Hukuk Fakültesi'ni bitirdi. İlk çalışmalarını, şiir ve deneme türlerinde memleketinde Demokrasiye Hizmet gazetesinde yayımladı. Lisedeyken Hamle adında bir dergi çıkardı. İstanbul'da bir haftalık dergide sanat sayfaları düzenledi. 1969 yılında Edebiyat dergisini ve 1972'de Edebiyat Dergisi Yayınları'nı kurdu. Edebiyat Dergisi Yayınları'nın ilk kitabı Batı Notları'dır. Edebiyat dergisi, kimi aralıklarla uzun yıllar sürdürdüğü yayınına, Aralık 1984'te ara verdi. Edebiyat Dergisi Yayınları, 1972-1984 yılları arasında 18'i Nuri Pakdil imzasını taşıyan, 45 kitap yayımladı."

    
    case poetAliKutlay = "Yedi Güzel Adam şairlerinden olan Ali Kutlay 1940 yılında dünyaya geldi. Eserlerini acı, aşk ve ölüm üzerine kaleme aldı. Maraş Lisesi’nde öğrenci olduğu yıllarında, sonrasında edebiyat dünyasında isimlerinden söz edilecek Erdem Bayazıt, Rasim Özdenören, Alaeddin Özdenören, Mehmet Akif İnan, Nuri Pakdil ve Cahit Zarifoğlu şair ve yazarlarla aynı edebiyat grubunun içinde yer almıştır"
    
    case poetAlaeddinOzdenoren = "Alâeddin Özdenören 20 Mayıs 1940 tarihinde Kahramanmaraş’ta dünyaya geldi. Rasim Özdenören’in ikiz kardeşi olan Alaeddin Özdenören Yedi Güzel Adam şairlerindendir.Lise yıllarında ikiz kardeşi Rasim Özdenören Cahit Özdenören ve Erdem Beyazıt ile Maraş'ta çıkardıkları Hamle dergisi ile mahalli gazeteler için hazırladıkları edebiyat sayfalarında edebiyata başlayan Alâeddin Özdenören'in edebiyat hayatı, Necip Fazıl’la Büyük Doğu’da, Sezai Karakoç’la Diriliş’te, karşılaşmıştır. Alaeddin Özdenören son yazılarını ise Yedi İklim, Hece ve Ay Vakti dergileri için yazmıştır."
    
    case poetCahitZarifoglu = "Abdurrahman Cahit Zarifoğlu 1 Temmuz 1940 yılında dünyaya geldi. Çocukluğu Siverek, Maraş ve Ankara’da geçti. Cahit Zarifoğlu üniversite eğitimini İstanbul Üniversitesi Edebiyat Fakültesi Alman Dili ve Edebiyatı bölümünde aldı. Zarifoğlu’nun şiirleri Diriliş dergisinde yayımlandı. Cumhuriyet dönemi Türk edebiyatının önde gelen isimlerinden Cahit Zarifoğlu 7 Haziran 1987 yılında vefat etti."
    
    case poetSezaiKarakoc = "Sezai Karakoç 22 Ocak 1933 tarihinden Diyarbakır’da dünyaya geldi. Sezai Karakoç 1944 yılında Maraş Ortaokulu'nda parasız yatılı olarak okudu. İkinci yeni şiirinin önde gelen ismi Sezai Karakoç 1947-1950 yılları arasında Gaziantep Lisesi’sinde yatılı okuyor. Lise eğitimi boyunca Felsefe dersine ilgi duydu. Üniversite eğitimini Ankara Üniversitesi Siyasal Bilgiler Fakültesi’nde başladı 1955'te fakültenin Maliye Bölümünden mezun oldu. İstanbul'da Diriliş Yayınları ve Diriliş dergisini kurdu. 1990 yılında güller açan gül ağacı amblemiyle Diriliş partisini kurdu. Sezai Karakoç Monna Rossa ve Ey Sevgili şiirleri ile bilinir."
    
    case poetErdemBeyazit = "Erdem Beyazıt 18 Aralık 1939’da Kahramanmaraş’ta dünyaya geldi. İlk ve orta öğrenimini Kahramanmaraş'ta tamamladı. İstanbul Üniversitesi ve Ankara Üniversitesi’nde hukuk eğitimi aldı. Erdem Beyazıt, Milli Eğitim Bakanlığı bünyesinde çalıştı. 30 Kasım 1987 seçimlerinde Anavatan Partisi'nden Kahramanmaraş milletvekili seçildi. Millî Eğitim ve Çevre komisyonlarında görev aldı. 1991'de siyaseti bırakıp İstanbul'a yerleşti. Yedi Güzel Adam şairlerinden olan Erdem Beyazıt 5 Temmuz 2008'de İstanbul'da hayatını kaybetti."
}
