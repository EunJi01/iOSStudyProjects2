# iosSwiftStudy

| 회차    | 내용                                           | 진행 | 링크                                                         | 코멘트                                                  | 날짜           |
| ------- | ---------------------------------------------- | ---- | ------------------------------------------------------------ | ------------------------------------------------------- | -------------- |
| **1회** | Basics | Complete |  |  | **2022.05.20** |
| **2회** | AutoLayoutExample | Complete |  |  | **2022.05.25** |
| **3회** | SymbolRoller | Complete |  |  | **2022.05.25** |
| **4회** | SimpleWeather | Complete |  |  | **2022.05.26** |
| **5회** | StockRank | Complete |  |  | **2022.05.27** |
| **6회** | ChatList | Complete |  |  | **2022.05.30** |
| **7회** |  | Complete |  |  | **2022.05.** |
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
[![Simulator Screen Recording - iPhone 11 - 2022-06-10 at 19 42 19](https://user-images.githubusercontent.com/92143918/173048780-624699b0-dfa6-41a1-8324-cad5ad540d0e.gif)
</br>
</br>
</br>

## ISSUES
   - 버튼 관련 issue](https://github.com/EunJi01/iosSwiftStudy/issues/1)</br>
