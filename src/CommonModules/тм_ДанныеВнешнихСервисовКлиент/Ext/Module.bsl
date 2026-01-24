// MIT License
//
// Copyright (c) 2025 Maksim Kochemasov
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#Область СлужебныйПрограммныйИнтерфейс

// Controller события ввода данных аутентификации
//
// Параметры:
//  Форма - ФормаКлиентскогоПриложения - форма, где запрашивается ввод данных аутентификации
//
Процедура ПриВводеДанныхАутентификации(Форма) Экспорт
	
	Если НЕ ЗначениеЗаполнено(Форма.АдресВхДанныеАвторизации) 
		И ЗначениеЗаполнено(Форма.Объект.ИдентификаторДанныхАвторизации) Тогда
		
		тм_ДанныеВнешнихСервисовВызовСервера.ПоместитьДанныеАутентификации(Форма.АдресВхДанныеАвторизации,
			Форма.Объект.ИдентификаторДанныхАвторизации, Форма.УникальныйИдентификатор);
		
	Иначе
		
		Если НЕ ЭтоАдресВременногоХранилища(Форма.АдресВхДанныеАвторизации) Тогда
			Форма.АдресВхДанныеАвторизации = ПоместитьВоВременноеХранилище(Новый Структура, Форма.УникальныйИдентификатор);
		КонецЕсли;
		
	КонецЕсли;
	
	ПараметрыФормыВводаДанныхАутентификации = Новый Структура;
	ПараметрыФормыВводаДанныхАутентификации.Вставить("АдресВхДанныеАвторизации", Форма.АдресВхДанныеАвторизации);
	
	ОбработчикВводаДанныхАутентификации = Новый ОписаниеОповещения("ПослеВводаДанныхАутентификации", ЭтотОбъект, Форма);
	
	ОткрытьФорму("ОбщаяФорма.тм_ВводДанныхАутентификацииВнешнегоСервиса", ПараметрыФормыВводаДанныхАутентификации, Форма,
		, , , ОбработчикВводаДанныхАутентификации, РежимОткрытияОкнаФормы.БлокироватьОкноВладельца);
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Параметры:
//  Результат - Булево
//  Форма - ФормаКлиентскогоПриложения
//
Процедура ПослеВводаДанныхАутентификации(Результат, Форма) Экспорт
	
	Если Результат = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Форма.Модифицированность = Истина;
	
КонецПроцедуры

#КонецОбласти