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

#Область ОбработчикиСобытий

#Область ПрикладнаяОперацияВнешнегоСервиса

// GET /{serviceId}/{operationId}
Функция ПрикладнаяОперацияВнешнегоСервисаGET(Запрос)
	
	МетодGET = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.GET;
	
	Возврат РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодGET);
	
КонецФункции

// POST /{serviceId}/{operationId}
Функция ПрикладнаяОперацияВнешнегоСервисаPOST(Запрос)
	
	МетодPOST = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.POST;
	
	Возврат РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодPOST);
	
КонецФункции

// PUT /{serviceId}/{operationId}
Функция ПрикладнаяОперацияВнешнегоСервисаPUT(Запрос)
	
	МетодPUT = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.PUT;
	
	Возврат РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодPUT);
	
КонецФункции

// PATCH /{serviceId}/{operationId}
Функция ПрикладнаяОперацияВнешнегоСервисаPATCH(Запрос)
	
	МетодPATCH = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.PATCH;
	
	Возврат РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодPATCH);
	
КонецФункции

// DELETE /{serviceId}/{operationId}
Функция ПрикладнаяОперацияВнешнегоСервисаDELETE(Запрос)
	
	МетодDELETE = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.DELETE;
	
	Возврат РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодDELETE);
	
КонецФункции

#КонецОбласти

#Область ОсновнойМодульВнешнегоСервиса

// GET /{serviceId}/mainModule/{commandId}
Функция ОсновнойМодульВнешнегоСервисаGET(Запрос)
	
	МетодGET = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.GET;
	
	Возврат РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодGET);
	
КонецФункции

// POST /{serviceId}/mainModule/{commandId}
Функция ОсновнойМодульВнешнегоСервисаPOST(Запрос)
	
	МетодPOST = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.POST;
	
	Возврат РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодPOST);
	
КонецФункции

// PUT /{serviceId}/mainModule/{commandId}
Функция ОсновнойМодульВнешнегоСервисаPUT(Запрос)
	
	МетодPUT = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.PUT;
	
	Возврат РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодPUT);
	
КонецФункции

// PATCH /{serviceId}/mainModule/{commandId}
Функция ОсновнойМодульВнешнегоСервисаPATCH(Запрос)
	
	МетодPATCH = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.PATCH;
	
	Возврат РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодPATCH);
	
КонецФункции

// DELETE /{serviceId}/mainModule/{commandId}
Функция ОсновнойМодульВнешнегоСервисаDELETE(Запрос)
	
	МетодDELETE = Перечисления.тм_ДоступныеМетодыОбработкиЗапросов.DELETE;
	
	Возврат РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодDELETE);
	
КонецФункции

#КонецОбласти

#Область Доступность

// GET /health
Функция ДоступностьGET(Запрос)
	
	Ответ = Новый HTTPСервисОтвет(200);
	Ответ.УстановитьТелоИзСтроки("OK");
	
	Возврат Ответ;
	
КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Параметры:
//  Запрос - HTTPСервисЗапрос
//  МетодHTTP - ПеречислениеСсылка.тм_ДоступныеМетодыОбработкиЗапросов
// 
// Возвращаемое значение:
//   - HTTPСервисОтвет
//
Функция РезультатВыполненияПрикладнойОперацииСервиса(Запрос, МетодHTTP)
	
	ИдентификаторСервиса = Запрос.ПараметрыURL.Получить("serviceId");
	ИдентификаторПрикладнойОперации = Запрос.ПараметрыURL.Получить("operationId");
	
	Возврат тм_УправлениеМаршрутизацией
		.ПриПолученииЗапросаДляПрикладнойОперации(Запрос, ИдентификаторСервиса, ИдентификаторПрикладнойОперации, МетодHTTP);
	
КонецФункции

// Параметры:
//  Запрос - HTTPСервисЗапрос
//  МетодHTTP - ПеречислениеСсылка.тм_ДоступныеМетодыОбработкиЗапросов
// 
// Возвращаемое значение:
//   - HTTPСервисОтвет
//
Функция РезультатВыполненияКомандыОсновногоМодуляВнешнегоСервиса(Запрос, МетодHTTP)
	
	ИдентификаторСервиса = Запрос.ПараметрыURL.Получить("serviceId");
	ИдентификаторКоманды = Запрос.ПараметрыURL.Получить("commandId");
	
	Возврат тм_УправлениеМаршрутизацией
		.ПриПолученииЗапросаДляОсновногоМодуляСервиса(Запрос, ИдентификаторСервиса, ИдентификаторКоманды, МетодHTTP);
	
КонецФункции

#КонецОбласти

