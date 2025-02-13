
&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	
	РедактируемаяСтрока = Элементы.Товары.ТекущиеДанные;
	РасчитатьСумму(РедактируемаяСтрока);
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	
	РедактируемаяСтрока = Элементы.Товары.ТекущиеДанные;
	РасчитатьСумму(РедактируемаяСтрока);
	
КонецПроцедуры

&НаКлиенте
Процедура РасчитатьСумму(СтрокаДляРасчета)
	
	СтрокаДляРасчета.Сумма = СтрокаДляРасчета.Цена*СтрокаДляРасчета.Количество;
	
КонецПроцедуры

&НаКлиенте
Процедура СортировкаСтрокПоСумме(Команда)
	
	Объект.Товары.Сортировать("Сумма Возраст");
	Элементы.ТоварыСортировкаСтрокПоСумме.Пометка = Не Элементы.ТоварыСортировкаСтрокПоСумме.Пометка;
	
КонецПроцедуры

&НаКлиенте
Процедура ОбновитьЦены(Команда)
	
	ОбновитьЦеныНаСервере();
	
КонецПроцедуры

&НаСервере
Процедура ОбновитьЦеныНаСервере()
	
	  Массив = Новый Массив
	
КонецПроцедуры

