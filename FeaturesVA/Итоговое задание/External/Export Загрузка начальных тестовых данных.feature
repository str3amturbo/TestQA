﻿#language: ru

@tree
@ExportScenarios 
@IgnoreOnCIMainBuild

Функционал: Подготовка тестовых данных

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Export данных константы
	И я перезаполняю константу "SSLIMAP" значением "False"
	И я перезаполняю константу "SSLPOP3" значением "False"
	И я перезаполняю константу "SSLSMTP" значением "False"
	И я перезаполняю константу "АдресPOP3Сервера" значением "pop.mail.ru"
	И я перезаполняю константу "АдресSMTPСервера" значением "smtp.mail.ru"
	И я перезаполняю константу "ВалютаУчета" значением "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"
	И я перезаполняю константу "ВоспроизводитьТекстУведомления" значением "False"
	И я перезаполняю константу "ИспользоватьIMAP" значением "False"
	И я перезаполняю константу "ИмяОтправителяПочтовогоСообщения" значением "tovarshop@mail.ru"
	И я перезаполняю константу "ИспользоватьAPNS" значением "False"
	И я перезаполняю константу "ИспользоватьFCM" значением "False"
	И я перезаполняю константу "ИспользоватьWNS" значением "False"
	И я перезаполняю константу "ИспользоватьСетьПередачиДанных" значением "False"
	И я перезаполняю константу "ИспользоватьСотовуюСеть" значением "False"
	И я перезаполняю константу "ИспользоватьСпутники" значением "False"
	И я перезаполняю константу "КодНовогоУзлаПланаОбмена" значением "3"
	И я перезаполняю константу "ОтметкаНаФотоснимкеДата" значением "False"
	И я перезаполняю константу "ПарольPOP3" значением "tovar1999"
	И я перезаполняю константу "ПользовательPOP3" значением "tovarshop"
	И я перезаполняю константу "ПортPOP3" значением "110"
	И я перезаполняю константу "ПортSMTP" значением "25"
	И я перезаполняю константу "РаботаСТорговымОборудованием" значением "False"
	И я перезаполняю константу "СертификатМобильногоПриложенияIOS" значением "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"
	И я перезаполняю константу "ТаймаутИнтернетПочты" значением "60"
	И я перезаполняю константу "ТолькоБесплатные" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияIMAP" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияPOP3" значением "False"
	И я перезаполняю константу "ТолькоЗащищеннаяАутентификацияSMTP" значением "False"
	И я перезаполняю константу "УчетПоСкладам" значением "True"

Сценарий: Export данных справочники

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'False'           | '000000003' | 'EUR'          | 'евро'                       | 'евроцент'                    |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'         | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка'      | '14'  | '+7(999)528-96-21' | 'techno@techno.ru'       | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000016' | 'Магазин "Мясная лавка"'    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '235489' | 'Россия' | 'Москва'          | 'Селезневская'  | '10'  | '+7(999)256-99-33' | 'korovin@myasnoya.ru'    | '+7(999)256-99-32' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Коровин С. П.'   | 55.78081  | 37.608828 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Скороход АО'               | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Москва'          | 'Полярная ул.'  | '33'  | '+7(999)234-57-65' | ''                       | '+7(999)234-57-65' | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Улиткин Ф.Ф.'    | 55.88895  | 37.64444  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000006' | 'Пантера АО'                | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | '2222'   | 'Польша' | 'Варшава'         | 'Czolowa'       | '2'   | '+7(999)890-987'   | 'ff@jmail.ru'            | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Ковальски А.Р.'  | 52.331154 | 20.989486 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург'    | 'Лесная'        | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'           | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'   | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО '       | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул'         | 'Ленина'        | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'   |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000010' | 'Корнет ЗАО'                | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '221134' | 'Россия' | 'Москва'          | 'ул. Молодцова' | '4'   | '+7(999)789-67-85' | 'liepa@kornet.ru'        | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Лиепа А.П.'      | 55.87825  | 37.64153  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                | ''                                                                   | ''       | ''       | ''                | ''              | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'                | ''                                                                   | ''       | ''       | ''                | ''              | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'          |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | 'False'           | '000000006' | 'Польша'          |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'            |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'           |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'        | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул'   | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df6' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'     | '000000028' | 'Veko345MO'     | 'VEKO00001' | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8ec1ffbf44d5' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000030' | 'Колбаса'       | 'Kol67'     | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''                                                                         | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000002' | 'Сапоги'        | 'ОБ-001'    | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=9705085bd6ed1c6d11edf3d1a17025e2' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000003' | 'Туфли'         | 'ОБ-002'    | 'e1cib/data/Справочник.Контрагенты?ref=a9c500055d49b45e11dbf348086715b0' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1d' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db966b094c0e4a' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000007' | 'Сланцы'        | 'ОБ-00055'  | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa1a' | 'Enum.ВидыТоваров.Товар' | ''         |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000014' | 'Пылесосы'      | ''          | ''                                                                       | ''                                                                         | ''                       | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'      | ''          | ''                                                                       | ''                                                                         | ''                       | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'         | ''          | ''                                                                       | ''                                                                         | ''                       | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''          | ''                                                                       | ''                                                                         | ''                       | ''         | ''       |

Сценарий: Export данных документы

	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'False'           | '000000001' | '15.11.2021 3:33:42'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8f4678125c6a' | 'False'           | '000000002' | '01.12.2021 20:44:18' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db90bdd1e61250' | 'False'           | '000000003' | '06.12.2021 20:44:01' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | 2700   | 1            | 2700    |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8c51bbb079b0' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 1500   | 2            | 3000    |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8f4678125c6a' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 12     | 2            | 1500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db8f4678125c6a' | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db966b094c0e4a' | 22     | 2            | 300     |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db90bdd1e61250' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8e8bd1cb82af' | 1500   | 3            | 4500    |
		| 'e1cib/data/Документ.ПриходТовара?ref=a9b000055d49b45e11db90bdd1e61250' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079af' | 2700   | 1            | 2700    |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b05' | 'False'           | '000000001' | '02.04.2022 21:13:38' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | ''                                                                  | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b08' | 'False'           | '000000002' | '04.04.2022 1:12:38'  | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b05' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df6' | 10000  | 1            | 10000   |
		| 'e1cib/data/Документ.РасходТовара?ref=bbef0050ba5c887711e1fc040faf2b08' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8ea92d97a749' | 250    | 50           | 12500   |