Merhabalar, ben Coutero. Bu paylaşımda sizlere FiveM'de QBUS paketlerinizde kullanabileceğiniz Türkçe ve stabil bir tavukçuluk mesleği paylaştım. Beğendiyseniz yıldızlayabilir ve destek için script ismini "Coutero-tavuk" olarak bırakabilirsiniz. Temel ayarları config dosyasından düzenleyebilirsiniz, bu işlem için kod bilmeniz gerekmiyor.


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Eşya görsellerine erişmek için inventory dosyanızın HTML kısmındaki "images" kısmına dosyada verdiğim görselleri ekleyin 
İmages > qb-inventory>html>images 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Önce qb-core dosyasına giriş yapın, sonra içinde bulunan shared dosyasına girin ve içerisindeki items.lua'yı açın. Kopyaladığınız yazıyı uygun bir alana yapıştırın.
qb-core>shared>items
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
```lua
	-- coutero-davuk
	["alivechicken"] 		 		 = {["name"] = "alivechicken", 					["label"] = "Tavuk", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "alivechicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Kafesten yeni yakalanmış ve biraz hırpalanmış görünüyor."},
	["slaughteredchicken"] 		     = {["name"] = "slaughteredchicken", 			["label"] = "Parçalanmış Tavuk", 	    ["weight"] = 5000, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bunu kesen kasap işinde usta gibi duruyor."},
	["packagedchicken"] 		 	 = {["name"] = "packagedchicken", 				["label"] = "Paketlenmiş Tavuk", 	["weight"] = 5000, 		["type"] = "item", 		["image"] = "packagedchicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Ambalajlama ve paketleme mükemmel, satışa hazır."},
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////