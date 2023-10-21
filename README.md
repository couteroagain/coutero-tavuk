Merhabalar, ben Coutero. Bu paylaşımda sizlere FiveM'de QBUS paketlerinizde kullanabileceğiniz Türkçe ve stabil bir tavukçuluk mesleği paylaştım. Beğendiyseniz yıldızlayabilir ve destek için script ismini "Coutero-tavuk" olarak bırakabilirsiniz. Temel ayarları config dosyasından düzenleyebilirsiniz, bu işlem için kod bilmeniz gerekmiyor.

Eşya görsellerine erişmek için inventory dosyanızın HTML kısmındaki "images" kısmına dosyada verdiğim görselleri ekleyin 
İmages > qb-inventory>html>images 


Önce qb-core dosyasına giriş yapın, sonra içinde bulunan shared dosyasına girin ve içerisindeki items.lua'yı açın. Kopyaladığınız yazıyı uygun bir alana yapıştırın.
qb-core>shared>items

```lua
	-- coutero-davuk
	["alivechicken"] 		 		 = {["name"] = "alivechicken", 					["label"] = "Tavuk", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "alivechicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Kafesten yeni yakalanmış ve biraz hırpalanmış görünüyor."},
	["slaughteredchicken"] 		     = {["name"] = "slaughteredchicken", 			["label"] = "Parçalanmış Tavuk", 	    ["weight"] = 5000, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bunu kesen kasap işinde usta gibi duruyor."},
	["packagedchicken"] 		 	 = {["name"] = "packagedchicken", 				["label"] = "Paketlenmiş Tavuk", 	["weight"] = 5000, 		["type"] = "item", 		["image"] = "packagedchicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ambalajlama ve paketleme mükemmel, satışa hazır."},
```


![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165373265791942797/image.png?ex=65469d6e&is=6534286e&hm=01a996460d168cd9a9d3bd90a867480f6d10b9bbbb68f702b021f2482e0a693e&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165373180425289838/image.png?ex=65469d59&is=65342859&hm=1d0cff3abb1aa4349a5fb1871dd435bb84267c20cc6c462cb2037687c25ccdaf&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374282096979998/image.png?ex=65469e60&is=65342960&hm=5d84c2b1ec7405904825f0a3ae19f3b645bfa287db5773f45ce77b5d355dabc7&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374640517025924/image.png?ex=65469eb5&is=653429b5&hm=64412148f9c90d7ad75510077736ea6e2ff19bdb436d61909ac7ff3050e4695d&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374584925720576/image.png?ex=65469ea8&is=653429a8&hm=01115a7a1174a2cdb1e15fddfae1dcf3fed9e4fd407f1f8128ed7cfd01f7569d&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374696741670922/image.png?ex=65469ec3&is=653429c3&hm=9d422dd226bf4330eb5e23eba1ae8852337534d2a7bf60a5f3b8a18ac1fde024&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374970587791501/image.png?ex=65469f04&is=65342a04&hm=bc9a855235e616f8d1cf281425523c00314b01313d64e95a6eda83bc5a943e5d&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374870801096835/image.png?ex=65469eec&is=653429ec&hm=f4207fc20b7f8894bb4659075e7438134579310eac5d0d5ff4eeff8602c49954&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165374932465758208/image.png?ex=65469efb&is=653429fb&hm=62a29caf6dc4e46a815b5931bea1b17261823657ea5d5bbc614d70f8bcef5f7a&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165375016129548338/image.png?ex=65469f0f&is=65342a0f&hm=d3f88e559fd98dcad7b99229cc8fe3f6d9ed6804a4173a4399dc80cb74cf152c&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165375284023918682/image.png?ex=65469f4f&is=65342a4f&hm=1787eb147544997afdfb5731c75e6c52605f79af4ad22fee056c81d550d4b825&)
![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165375330576519169/image.png?ex=65469f5a&is=65342a5a&hm=02b21fc8a323c4746c3dd0f96895f61c94dacf37ec77c1431b07f0ed173afbb8&)
