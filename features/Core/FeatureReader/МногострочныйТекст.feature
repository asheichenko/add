﻿# language: ru

Функционал: Проверка многострочного текста
	Как Разработчик
	Я Хочу использовать многострочный текст
	Чтобы максимально использовать возможности Gherkin

Сценарий: Использование многострочного текста - одна строка

	Когда я выполняю шаг с параметром
	"""
	Просто многострочный текст
	"""
	Тогда я получаю в процедуру параметр типа 'Строка'
	И это значение в виде строки равно 'Просто многострочный текст'

Сценарий: Использование многострочного текста - несколько строк

	Когда я выполняю шаг с параметром
	"""
	Первая строка
	Вторая строка
	"""
	Тогда я получаю в процедуру параметр типа 'Строка'
	И это значение в виде строки равно
	"""
	Первая строка
	Вторая строка
	"""

Сценарий: Использование переменных контекста внутри многострочного текста

	Дано Я запоминаю строку "Начало. передаю 1245. Окончание" как переменную "ПередаваемоеСообщение"
	Когда я выполняю шаг с параметром
	"""
	Просто многострочный текст
	Сообщение - $ПередаваемоеСообщение$
	"""
	Тогда я получаю в процедуру параметр типа 'Строка'
	# И это значение в виде строки равно 'Просто многострочный текст'
	И это значение в виде строки равно
	"""
	Просто многострочный текст
	Сообщение - Начало. передаю 1245. Окончание
	"""

Сценарий: Использование многострочного текста и присвание значения  в экспортном сценарии
	Я Хочу использовать многострочных строки с параметрами внутри экспортных сценариев
	Чтобы исключить следующий баг:
	Ошибка, если шаг вызывает экспортный сценарий с параметром и в этом сценарии есть многострочной текст с присваиванием значения
	# Экспортные сценарии с многострочной строкой не воспринимают передачу параметров в экспортный сценарии и их использование внутри многострочного сценария

	Когда Cлужебный сценарий с многострочной строкой и присванием значения с передачей параметра-строка "Строка для сценария"
	Тогда переменная "РезультатИзЭкспортногоСценария" имеет значение 11

Сценарий: Использование многострочного текста и присвание значения  в экспортном сценарии
	Когда Cлужебный сценарий с многострочной строкой с передачей параметра-строка "Внешняя строка-параметр для сценария"
	Тогда переменная "РезультатИзЭкспортногоСценария" имеет значение "Внешняя строка-параметр для сценария"
