
&НаКлиенте
Процедура ПрочитатьСписокПользователей(Команда)
	
	ПрочитатьСписокПользователейНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ПрочитатьСписокПользователейНаСервере()
	
    ТекущиеПользователи = ПользователиИнформационнойБазы.ПолучитьПользователей();
	
	Для Каждого Пользователь Из ТекущиеПользователи Цикл
		
	РолиМассив = Новый Массив;
	
	Для Каждого Роль Из Пользователь.Роли Цикл
		
		РолиМассив.Добавить(Строка(Роль));
			
	КонецЦикла; 
	
	РолиСтрокой = СтрСоединить(РолиМассив, ", ");
	   
	Текст.ДобавитьСтроку(СтрШаблон("Полное имя: %1, Роли: %2.", Пользователь.ПолноеИмя , РолиСтрокой));
	
	КонецЦикла;
                                                                                  
КонецПроцедуры
