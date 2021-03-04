﻿
Процедура ПередНачаломРаботыСистемы(Отказ)
	
	ИмяАдминистратора = ЗапускПриложенияКлиент.ИмяАдминистратораПоУмолчанию();
	Если ЗапускПриложенияВызовСервера.СоздатьПервогоАдминистратораПриНеобходимости(ИмяАдминистратора, ПараметрЗапуска) Тогда
		Отказ = Истина;
		Если ПустаяСтрока(ПараметрЗапуска) Тогда
			ЗапускПриложенияКлиент.ЗапуститьСистемуПовторно(ИмяАдминистратора);
		КонецЕсли;
	КонецЕсли;
	
КонецПроцедуры