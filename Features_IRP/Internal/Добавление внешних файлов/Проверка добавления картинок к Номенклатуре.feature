﻿#language: ru

@tree

Функционал: Проверка добавления картинок к Номенклатуре

Как Менеджер я хочу
добавить картинки к номенклатуре
чтобы можно было посмотреть как выглядит товар   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0601 Подготовительный (добавление картинок)
	Когда экспорт основных данных
	Когда экспорт настроек картинок
	И я закрываю TestClient "Этот клиент"
	//И Я устанавливаю в данную базу расширение "IRP_TestExtension" из каталога исходников "$КаталогПроекта$\Features_IRP\Additional"
	И Я устанавливаю в данную базу расширение из файла "$КаталогПроекта$\Features_IRP\Additional\IRP_TestExtension.cfe"
	И я подключаю профиль TestClient "Этот клиент"

Сценарий: _0602 Проверка добавления картинки
	Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb766bf96b2750"
	И я выбираю файл "$КаталогПроекта$\Features_IRP\Files\itempicture1.png"
	И я делаю клик по элементу клиента тестирования '+' 'Тип' UI Automation
	И я нажимаю на кнопку с именем 'update_slider'
	//И я делаю клик по элементу клиента тестирования 'Бренд 2' 'Тип' UI Automation