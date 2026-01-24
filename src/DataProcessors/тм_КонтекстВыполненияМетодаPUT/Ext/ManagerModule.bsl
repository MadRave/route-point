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

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область СлужебныйПрограммныйИнтерфейс

// Выполняет команду обработки PUT-запроса модуля прикладной операции
//
// Параметры:
//  МодульПрикладнойОперации - ВнешняяОбработкаОбъект
//  ЗапросHTTP - HTTPСервисЗапрос - входящий запрос
// 
// Возвращаемое значение:
//   - HTTPСервисОтвет
//
Функция ВыполнитьКомандуПрикладнойОперации(МодульПрикладнойОперации, ЗапросHTTP) Экспорт
	
	Возврат МодульПрикладнойОперации.ОбработатьPUTЗапрос(ЗапросHTTP);
	
КонецФункции

// Выполняет команду обработки PUT запроса основного модуля API внешнего сервиса
//
// Параметры:
//  МодульAPI - ВнешняяОбработкаОбъект
//  ЗапросHTTP - HTTPСервисЗапрос - входящий запрос
//  ИдентификаторКоманды - Строка - идентификатор команды основного модуля API, которая должна быть выполнена
// 
// Возвращаемое значение:
//   - HTTPСервисОтвет
//
Функция ВыполнитьКомандуОсновногоМодуляВнешнегоСервиса(МодульAPI, ЗапросHTTP, ИдентификаторКоманды) Экспорт
	
	Возврат МодульAPI.ОбработатьPUTЗапрос(ЗапросHTTP, ИдентификаторКоманды);
	
КонецФункции

#КонецОбласти

#КонецЕсли