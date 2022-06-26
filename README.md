# iosSwiftStudy

| 회차    | 내용                                           | 진행 | 링크                                                         | 코멘트                                                  | 날짜           |
| ------- | ---------------------------------------------- | ---- | ------------------------------------------------------------ | ------------------------------------------------------- | -------------- |
| **1회** | Basics | Complete |  |  | **2022.05.20** |
| **2회** | AutoLayoutExample | Complete |  |  | **2022.05.25** |
| **3회** | SymbolRoller | Complete |  |  | **2022.05.25** |
| **4회** | SimpleWeather | Complete |  |  | **2022.05.26** |
| **5회** | StockRank | Complete |  |  | **2022.05.27** |
| **6회** | ChatList | Complete |  |  | **2022.05.30** |
| **7회** | AppleFramework | Complete |  |  | **2022.06.10** |
| **8회** |  | Complete |  |  | **2022.05.** |
| **9회** |  | Complete |  |  | **2022.05.** |
| **10회** |  | Complete |  |  | **2022.05.** |
</br>
</br>
</br>

## **SymbolRoller**

➡️ Reload 버튼을 탭해 날씨를 변경   
➡️ 날씨와 날씨에 맞는 아이콘 출력   

📲 실행 화면   
![Simulator Screen Recording - iPhone 13 Pro - 2022-05-29 at 14 40 15](https://user-images.githubusercontent.com/92143918/170854007-4e48c2c6-4ab3-4c85-b677-904293e70c49.gif)
</br>
</br>
</br>

## **SimpleWeather**

➡️ Change City 버튼을 탭해 도시를 변경   
➡️ 도시를 변경 할 때마다 도시의 온도와 날씨 아이콘 출력   

📲 실행 화면   
![Simulator Screen Recording - iPhone 13 - 2022-05-29 at 14 44 32](https://user-images.githubusercontent.com/92143918/170854085-4874536c-a246-4b73-b63c-0b175fa8101c.gif)
</br>
</br>
</br>

## **StockRank**

➡️ collectionView를 사용한 리스트 구현   
➡️ rank, image, name, price, diff를 화면에 출력    
➡️ diff의 수치에 따라 label의 색상 변경    
➕ likeButton을 탭하면 빈 하트에서 꽉 찬 하트로 변경되도록 구현 -> [버튼 관련 issue](https://github.com/EunJi01/iosSwiftStudy/issues/1)</br>

📲 실행 화면   
![Simulator Screen Recording - iPhone 13 - 2022-06-03 at 18 35 21](https://user-images.githubusercontent.com/92143918/171829467-332a9770-b973-4192-a72a-156f85225ecf.gif)

</br>
</br>
</br>

## **ChatList**

➡️ Constraints에서 거리를 정해줄 때 constant를 =뿐만 아니라 >=, <=등으로도 설정할 수 있다.    
➡️ 레이아웃이 설정한 크기대로 나타나지 않을 때 -> Estimate Size를 Automatic에서 None으로 바꿔준다. CollectionView FlowLayout의 Cell 사이즈를 더 명확하게 전달할 수 있다.          
➡️ 뷰 내의 객체끼리의 우선순위를 Centent Hugging Priority, Content Compression Resistance Priority로 정해줄 수 있다.      
➡️ DateFormatter()를 사용하여 날짜의 형식을 바꿔줄 수 있다. (String 타입의 날짜를 date로 전환 후 형식을 바꿔준 다음 다시 String으로 전환했다. 이 때 옵셔널 타입이 되므로 if를 통해 바인딩 해주었다.)       
➡️ 가장 최근의 채팅이 보이도록 viewDidLoad() 내에 sorted(by: )를 사용해 chatList를 정렬했다.       
➡️ humbnail의 모서리를 둥글게 하기 위해 awakeFromNib()를 호출하고, 이 안에서 Layer.cornerRadius를 설정했다.      

📲 실행 화면  
![Simulator Screen Recording - iPhone 11 - 2022-06-10 at 19 42 19](https://user-images.githubusercontent.com/92143918/173048780-624699b0-dfa6-41a1-8324-cad5ad540d0e.gif)
</br>
</br>
</br>

## **AppleFramework**

➡️ Framework의 이미지와 이름을 collectionView로 나열하는 어플리케이션 구현   
➡️ 동작하는 코드는 ViewController에 작성하고, FrameworkCell에는 configure를 만들어 어떤 데이터가 들어갈지만 정해줬다.      
➡️ Cell끼리 너무 붙어있지 않게 interItemSpacing을 통해 여백을 준 후, width와 height를 정해주어 셀의 크기를 설정했다.       
➡️ Prefers Large Titles를 체크해 Navigation Bar의 Title를 크게 설정했다.    
➡️ cell들이 화면 상하단 엣지 부분까지 보이게 하기 위해 CeollectionView의 Vertical Space Constraint를 Safe Area에서 Superview로 바꿔주고, Constant를 0으로 설정했다.     
➡️ 좌우에 여백을 주기 위해 contentInset으로 UIEdgeInsets을 설정했다.       
➡️ collectionView의 contentInset 프로퍼티에 접근해 UIEdgeInsets를 설정해 padding을 설정했다.      
➡️ Cell이 4열일 때 글자가 잘리는 현상을 방지하기 위해 FrameworkCell에서 awakeFromNib으로 nameLabel.adjustFontSizeToFitWidth = true 로 설정했다.      
➡️ 각 Cell을 터치했을 경우 didSelectItemAt 메소드를 통해 framework의 이름을 print.      

📲 실행 화면  
![Simulator Screen Recording - iPhone 11 - 2022-06-14 at 20 18 31](https://user-images.githubusercontent.com/92143918/173567068-bc2287e9-c2cf-4cdd-b10a-9d9c56ae92e1.gif)

</br>
</br>
</br>

## ISSUES
   - 버튼 관련 issue](https://github.com/EunJi01/iosSwiftStudy/issues/1)</br>
