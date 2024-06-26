Процедура ПериодНачалоВыбора(Элемент, ДанныеВыбора, ВыборДобавлением, СтандартнаяОбработка)
	СписокВыбора = Новый СписокЗначений;
	СписокВыбора.Добавить("Месяц");
	СписокВыбора.Добавить("Год");
	
	ВыбЭлемента = Объект.Период(СписокВыбора, Элементы, 0);
	Если НЕ ВыбЭлемента = Неопределено Тогда 
		Объект.Период = ВыбЭлемента.Значение;
	КонецЕсли;
	
	СтандартнаяОбработка = Ложь;
КонецПроцедуры

&НаКлиенте
Процедура СтажРаботыПриИзменении(Элемент)
	Если Объект.Период = "Месяц" и Объект.СтажРаботы > 12 Тогда
		//@skip-check use-non-recommended-method
		Сообщить("Введены неверные данные"); 
		ЭтаФорма.КоманднаяПанель.Доступность = Ложь; 
	ИначеЕсли Объект.Период = "Год" Тогда
		ЭтаФорма.КоманднаяПанель.Доступность = Истина;
	Иначе 
		ЭтаФорма.КоманднаяПанель.Доступность = Истина;
	КонецЕсли;
КонецПроцедуры
