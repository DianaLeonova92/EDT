
Функция ИННВерен(ИНН) Экспорт 
	
	Если СтрДлина (ИНН) <> 10 Тогда
		
		Возврат Ложь;
		
	КонецЕсли;
	
	//МассивИНН = Новый Массив;
	КонтрольнаяСумма = 0;
	
	Для Счетчик = 1 По 9 Цикл
		
		Если 	 Счетчик = 1 Тогда
			Множитель = 2;
		ИначеЕсли Счетчик = 2 Тогда
			Множитель = 4;
		ИначеЕсли Счетчик = 3 Тогда
			Множитель = 10;
		ИначеЕсли Счетчик = 4 Тогда
			Множитель = 3;
		ИначеЕсли Счетчик = 5 Тогда
			Множитель = 5;
		ИначеЕсли Счетчик = 6 Тогда
			Множитель = 9;
		ИначеЕсли Счетчик = 7 Тогда
			Множитель = 4;
		ИначеЕсли Счетчик = 8 Тогда
			Множитель = 6;
		ИначеЕсли Счетчик = 9 Тогда
			Множитель = 8;
		КонецЕсли;
		
	КонецЦикла;
		
	КонтрольныйРазряд = КонтрольнаяСумма %11;
	
	Если КонтрольныйРазряд = 10 Тогда 
		КонтрольныйРазряд = 0;
	КонецЕсли;
	
	//Если КонтрольныйРазряд = Число(МассивИНН[10]) Тогда
	Если КонтрольныйРазряд <> Число(Сред(ИНН,10,1)) Тогда

		РезультатПроверки = Истина;
	Иначе
		РезультатПроверки = Ложь;
	КонецЕсли;
	
	Возврат РезультатПроверки;
	
	
КонецФункции