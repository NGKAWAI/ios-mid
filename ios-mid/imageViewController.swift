//
//  imageViewController.swift
//  ios-mid
//
//  Created by csie on 2018/5/4.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class imageViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var phone = "NULL"
    var restaurantImageName = ""
    var names = "NULL"
    var restaurantNames = "NULL"
    var type = "NULL"
    var location = "NULL"
    var descriptio = "NULL"
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
            case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetaillconTextCell.self), for: indexPath) as! RestaurantDetaillconTextCell
            cell.iconImageView.image=UIImage(named: "phone")
            cell.shortTextLabel.text = phone
            return cell
            case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetaillconTextCell.self), for: indexPath) as! RestaurantDetaillconTextCell
            cell.iconImageView.image=UIImage(named: "map")
            cell.shortTextLabel.text = location
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:RestaurantDetailTextCell.self), for: indexPath) as! RestaurantDetailTextCell
            cell.descriptionLabel.text = descriptio
            return cell
        default:
            fatalError("Failed to instantiate the table view cell")
        }
    }
    
    @IBOutlet var headerView: RestarurantDetailHeaderView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        if restaurantImageName == "小灰蝶-1"{
            names = "墨點灰蝶屬"
            phone = "NULL"
            restaurantNames = "小灰蝶-1"
            type = "Araragi"
            location = "物種分布於東亞。"
            descriptio = "中小型灰蝶。軀體背側褐色，腹側白色。前翅前緣弧形。後翅CuA2脈末端有尾突。翅背面底色褐色，前翅中央有淺色紋。腹面底色白色，上有許多小黑斑，於後翅後半較模糊。臀區附近有橙色斑紋，於CuA1室有黑斑。前翅緣毛褐色，後翅外緣毛褐色、內緣毛白色。"
            
        }
        else if restaurantImageName == "小灰蝶-2"{
            names = "平山小灰蝶"
            phone = "波葉山螞蝗"
            restaurantNames = "小灰蝶-2"
            type = "Rapala nissa hirayamana"
            location = "分布於低、中海拔山區，不普遍。。"
            descriptio = "(小灰蝶科)展翅 31 - 34 mm， 雄蟲翅膀表面暗褐色具藍紫色光澤，翅腹面褐色，前、後翅各具褐色的橫帶，邊緣鑲不明顯的白邊，雌、雄外觀近似但雌蟲後翅近基部有一枚明顯的黃褐色斑。"
            
        }
        else if restaurantImageName == "小灰蝶-3"{
            names = "白小灰蝶"
            phone = "青剛櫟 狹葉椆 狹葉櫟 毽子櫟 錐果櫟 "
            restaurantNames = "小灰蝶-3"
            type = "Ravenna nivea"
            location = "分布於臺灣本島低、中海拔地區。臺灣以外分布於中國大陸南部及越南等地區"
            descriptio = "棲息在常綠闊葉林。一年一化，成蝶於晚春與初夏出現。成蝶於黃昏或陰天在森林裡活動。。"
            
        }
        else if restaurantImageName == "小灰蝶-4"{
            names = "白底烏小灰蝶"
            phone = "櫸"
            restaurantNames = "小灰蝶-4"
            type = "Satyrium austrinum"
            location = "4~9月"
            descriptio = "一年一世代，翅腹面白色，成蟲喜歡訪花。"
            
        }
        else if restaurantImageName == "小灰蝶-5"{
            names = "姬白小灰蝶"
            phone = "青剛櫟 錐果櫟"
            restaurantNames = "小灰蝶-5"
            type = "Leucantigius atayalicus"
            location = "4~6月"
            descriptio = "姬白小灰蝶是初夏的美麗小灰蝶，幾條縱向的線，縱橫交錯在潔白的翅膀上，非常漂亮，這種一年一世代的小灰蝶，也是捕蝶人眼中的靚品"
            
        }
        else if restaurantImageName == "三線蝶-1"{
            names = "台灣三線蝶"
            phone = "大葛藤 山黃麻 山葛 水黃皮"
            restaurantNames = "三線蝶-1"
            type = "Neptis nata lutatia"
            location = "2月(1)、4月(1)、5月(1)、7月(1)、10月(2)"
            descriptio = "第一道牙細長，第二道與第三道線紋的寬度較細，第二道為第三道的1.5倍或更少，第二道紋的末端點較小"
            
        }
        else if restaurantImageName == "三線蝶-2"{
            names = "寬紋三線蝶"
            phone = "阿里山清風藤 雀梅藤"
            restaurantNames = "三線蝶-2"
            type = "Neptis reducta"
            location = "6月(1)、7月(1)"
            descriptio = "寬紋三線蝶，前翅的橫帶眉紋狹長，末端幾乎達外緣的橢圓形白斑位置。"
            
        }
        else if restaurantImageName == "三線蝶-3"{
            names = "寬紋三線蝶"
            phone = "阿里山清風藤 雀梅藤"
            restaurantNames = "三線蝶-3"
            type = "Neptis reducta"
            location = "6月(1)、7月(1)"
            descriptio = "寬紋三線蝶，前翅的橫帶眉紋狹長，末端幾乎達外緣的橢圓形白斑位置。"
            
        }
        else if restaurantImageName == "三線蝶-4"{
            names = "埔里三線蝶"
            phone = "台灣雅楠 長葉木薑子 假長葉楠"
            restaurantNames = "三線蝶-4"
            type = "Neptis taiwana"
            location = "5月(1)、6月(1)、7月(3)、11月(2)"
            descriptio = "展翅52 - 60 mm，翅膀表面黑褐色，上翅的長條帶近外 端有缺角 ，但並未中斷。翅腹面橙褐色，下翅腹面有淡紫色帶， 雌雄差異不 大。本屬有14種之多，本種又稱蓬萊環蛺蝶，幼蟲以薔薇科之台灣石楠，樟等植物寄主，成蟲於3 - 5 月及 7 - 8 月2次期間較多見，分布於低中海拔山區，喜歡於陽光充足的林緣或樹冠上活動，領域性強。"
            
        }
        else if restaurantImageName == "三線蝶-5"{
            names = "埔里三線蝶"
            phone = "台灣雅楠 長葉木薑子 假長葉楠"
            restaurantNames = "三線蝶-5"
            type = "Neptis taiwana"
            location = "5月(1)、6月(1)、7月(3)、11月(2)"
            descriptio = "展翅52 - 60 mm，翅膀表面黑褐色，上翅的長條帶近外 端有缺角 ，但並未中斷。翅腹面橙褐色，下翅腹面有淡紫色帶， 雌雄差異不 大。本屬有14種之多，本種又稱蓬萊環蛺蝶，幼蟲以薔薇科之台灣石楠，樟等植物寄主，成蟲於3 - 5 月及 7 - 8 月2次期間較多見，分布於低中海拔山區，喜歡於陽光充足的林緣或樹冠上活動，領域性強。"
            
        }
        else if restaurantImageName == "鳳蝶-1"{
            names = "台灣麝香鳳蝶"
            phone = "馬兜鈴"
            restaurantNames = "鳳蝶-1"
            type = "Byasa impediens febanus"
            location = "2月(1)、4月(1)、5月(3)、6月(1)"
            descriptio = "展翅60-70mm，外觀近似麝香鳳蝶但本種雄蝶翅膀表面黑褐色，後翅亞外緣和肛角附近有的弦月狀斑紋較麝香鳳蝶大，且顏色呈粉紅色，麝香鳳蝶為鮮紅色，翅腹面斑紋位置與翅膀表面同，雌、雄外觀近似但雌蟲的翅面較寬大而圓，翅面底色亦較淡。本屬3種，本種又稱長尾麝鳳蝶、台灣麝鳳蝶，本種為台灣特有種，普遍分布於台灣低、中海拔山區但數量不多，幼蟲以馬兜鈴科植物寄主，成蟲喜歡訪花，飛翔緩慢，"
            
        }
        else if restaurantImageName == "鳳蝶-2"{
            names = "劍鳳蝶"
            phone = "馬兜鈴"
            restaurantNames = "鳳蝶-2"
            type = "Pazala eurous asakuraes"
            location = "3~7月"
            descriptio = "早春五寶蝶之一，一年一世代，會與青斑鳳蝶、青帶鳳蝶、寬青帶鳳蝶、斑鳳蝶群聚在溪邊吸水，在馬美可以拍攝到吸食桃花、蘿蔔花或呂宋莢迷的畫面。"
            
        }
        else if restaurantImageName == "鳳蝶-3"{
            names = "黃裳鳳蝶"
            phone = "異葉馬兜鈴 港口馬兜鈴"
            restaurantNames = "鳳蝶-3"
            type = "Troides aeacus formosanus"
            location = "1月(4)、3月(3)、6月(3)、9月(1)"
            descriptio = "展翅 110 - 130 mm，雄蝶下翅表面黃色，翅緣具黑色斑，雌蝶後翅表面具黑色斑塊，呈黑、黃相間的斑紋。雄蝶外觀近似珠光鳳蝶但本種雄蝶後翅緣的三角形黑斑較大，幼蟲體型碩大，體表具肉棘，以馬兜鈴等植物寄主。本屬3種，本種分布於低海拔山區，全台都有分布但以墾丁、台東地區較常見。"
            
        }
        else if restaurantImageName == "鳳蝶-4"{
            names = "曙鳳蝶"
            phone = "大葉馬兜鈴"
            restaurantNames = "鳳蝶-4"
            type = "Atrophaneura horishana"
            location = "7月(1)、8月(10)"
            descriptio = "展翅 100 - 115 mm，下翅腹面後半桃紅色布滿黑色斑點，像西瓜上的黑仔，雄蝶翅膀表面全黑色，雌蝶為淡灰褐色，下翅面具黑色斑點。本屬2種，本種為保育類昆蟲，幼蟲以馬兜鈴食物為食，主要分布於中海拔山區，成蟲於 7 - 9 月出現，喜歡在樹冠或高空飛行，也會出現在冇骨消花上吸蜜。"
            
        }
        else if restaurantImageName == "鳳蝶-5"{
            names = "雙環鳳蝶"
            phone = "飛龍掌血 食茱萸黃蘗 賊仔樹"
            restaurantNames = "鳳蝶-5"
            type = "Papilio hopponis"
            location = "2月(1)、3月(8)、4月(1)、5月(2)、8月(1)"
            descriptio = "展翅75-85mm，前翅面黑色密布綠色螢光鱗，後翅面近似前翅但中央至前緣有藍色塊狀斑，雌蝶後翅面紅色弦月狀紋較雄蝶發達，具長尾突，翅腹面雌、雄皆有兩枚紅色環狀斑呈縱向排列。本屬有21種，本種又稱雙環翠鳳蝶、北埔鳳蝶，主要分布於中、高海拔山區，幼蟲寄主芸香科的食茱萸、台灣黃蘗等，雌蝶習慣產卵於樹冠上，成蟲外觀近似烏鴉鳳蝶但本種翅腹面的紅色斑紋為雙環並列，成蟲於7-8月間數量最多，喜歡吸食冇骨消花蜜，飛行快速，為台灣特有種。"
            
        }
        headerView.headerImageView.image = UIImage(named: restaurantImageName)
        headerView.nameLabel.text = names
        headerView.typeLabel.text = type

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
