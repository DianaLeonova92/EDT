
&НаКлиенте
Процедура ОбъединитьСтроки(Команда)
	
	СвёрсткаСтрокНаСервере();
	
КонецПроцедуры   


&НаСервере
Процедура СвёрсткаСтрокНаСервере()
	
	ТаблицаЗначений = РеквизитФормыВЗначение("Товары", Тип("ТаблицаЗначений"));
	ТаблицаЗначений.Свернуть("Товар", "Сумма");
	
	ЗначениеВРеквизитФормы(ТаблицаЗначений, "Товары");
	
КонецПроцедуры

