
Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	
	ПараметрыСеанса.ВремяНачалаСеанса = ТекущаяДатаСеанса();  
	
	ТекущийПользователь = ПользователиИнформационнойБазы.ТекущийПользователь().ПолноеИмя; // Поздравление с днем рождения(Сотрудники) 

	СотрудникТекущегоПользователя = Справочники.Сотрудники.НайтиПоНаименованию(ТекущийПользователь, 1);  
	
	ПараметрыСеанса.СотрудникТекущегоПользователя = СотрудникТекущегоПользователя;
		
КонецПроцедуры

