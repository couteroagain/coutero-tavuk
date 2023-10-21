Merhabalar, ben Coutero. Bu paylaşımda sizlere FiveM'de QBUS paketlerinizde kullanabileceğiniz Türkçe ve stabil bir tavukçuluk mesleği paylaştım. Beğendiyseniz yıldızlayabilir ve destek için script ismini "Coutero-tavuk" olarak bırakabilirsiniz. Temel ayarları config dosyasından düzenleyebilirsiniz, bu işlem için kod bilmeniz gerekmiyor.

Eşya görsellerine erişmek için inventory dosyanızın HTML kısmındaki "images" kısmına dosyada verdiğim görselleri ekleyin 
İmages > qb-inventory>html>images 


Önce qb-core dosyasına giriş yapın, sonra içinde bulunan shared dosyasına girin ve içerisindeki items.lua'yı açın. Kopyaladığınız yazıyı uygun bir alana yapıştırın.
qb-core>shared>items

![alt text](https://cdn.discordapp.com/attachments/1165372276280139937/1165373265791942797/image.png?ex=65469d6e&is=6534286e&hm=01a996460d168cd9a9d3bd90a867480f6d10b9bbbb68f702b021f2482e0a693e&)

```lua
	-- coutero-davuk
	["alivechicken"] 		 		 = {["name"] = "alivechicken", 					["label"] = "Tavuk", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "alivechicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Kafesten yeni yakalanmış ve biraz hırpalanmış görünüyor."},
	["slaughteredchicken"] 		     = {["name"] = "slaughteredchicken", 			["label"] = "Parçalanmış Tavuk", 	    ["weight"] = 5000, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bunu kesen kasap işinde usta gibi duruyor."},
	["packagedchicken"] 		 	 = {["name"] = "packagedchicken", 				["label"] = "Paketlenmiş Tavuk", 	["weight"] = 5000, 		["type"] = "item", 		["image"] = "packagedchicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ambalajlama ve paketleme mükemmel, satışa hazır."},



