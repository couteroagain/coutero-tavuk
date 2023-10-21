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
