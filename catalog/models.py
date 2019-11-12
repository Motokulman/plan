from django.db import models
# Used to generate URLs by reversing the URL patterns
from django.urls import reverse
from django.contrib.auth.models import User


class Application(models.Model):
    """Модель, представляющая область применения материала, например, стеновой, облицовочный, цоколь"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(
        max_length=200, help_text='Введите применение материала, например, стеновой, облицовочный, цоколь')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Область применения материала'
        verbose_name_plural = 'Области применения материалов'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

# class RockMaterialTech(models.Model):
#     """Модель, представляющая технологию производства каменного стенового материала, например, газобетон, полнотелый, керамический"""
#     identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
#     name = models.CharField(max_length=200, help_text='Введите технологию производства каменного стенового материала, например, газобетон, полнотелый, керамический')

#     class Meta:
#         ordering = ('name',)
#         verbose_name = 'Технология производства материала'
#         verbose_name_plural = 'Технологии производства материалов'

#     def __str__(self):
#         """String for representing the Model object."""
#         return self.name


class WallMaterialType(models.Model):
    """Модель, представляющая тип стен дома. Используется для выбора материала несущей части стены """
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите тип материала стены с точки зрения пользователя: кирпич полнотелый, газобетон и т.д.')

    COMMON_TYPE = (
        ('r', 'Каменый'),
        ('w', 'Деревянный'),
    )   

    common_wall_type = models.CharField(
        max_length=1,
        choices=COMMON_TYPE,
        default='r',
        help_text='Выберите: деревянный или каменный',
    )

    class Meta:
        ordering = ('name',)
        verbose_name = 'Тип несущей части стены'
        verbose_name_plural = 'Типы несущей части стены'

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.identifier})'

class ProductBrand(models.Model):
    """Модель, представляющая бренд товара, материала, например, Wienerberger. То есть, если Porotherm 44 - это trademark самого материала, то Wienerberger - это бренд завода"""
    name = models.CharField(unique = True, max_length=200, help_text='Введите бренд, например, Wienerberger')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Бренд'
        verbose_name_plural = 'Бренды'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class TradeMark(models.Model):
    """Модель, представляющая торговую марку, например, Porotherm, Kerama и т.д."""
    brand = models.ForeignKey('ProductBrand', on_delete=models.CASCADE, null=True)
    name = models.CharField(unique = True, max_length=200, help_text='Введите торговую марку, например, Porotherm, Kerama и т.д.')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Торговая марка'
        verbose_name_plural = 'Торговые марки'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class TradeMarkSeries(models.Model):
    """Модель, представляющая серию товаров какой либо торговой марки"""
    trademark = models.ForeignKey('TradeMark', on_delete=models.CASCADE)
    name = models.CharField(unique = True, max_length=200, help_text='Введите название серии товаров, если она есть')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Товарная серия'
        verbose_name_plural = 'Товарные серии (какой-либо марки)'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class DirectProducer(models.Model):
    """Модель, представляющая завод - непосредственного производителя материала. Например, Кощаковский завод, Чайковский и т.д. Какой-нибудь местный завод может производить под маркой Wienerberger например"""
    name = models.CharField(unique = True, max_length=200, help_text='Введите производителя материала. Например, Кощаковский завод, Чайковский и т.д.')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Производитель материала'
        verbose_name_plural = 'Производители материалов (конкретные заводы)'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name


class BinderSolutionType(models.Model):
    """Модель, представляющая тип связующего раствора"""
    identifier = models.CharField(unique = True, default = 'default_identifiter', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите тип связующего раствора. Например, цементный раствор, клей на цементной основе и т.д.')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Тип связующего раствора'
        verbose_name_plural = 'Типы связующих растворов'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class WallReinforcementType(models.Model):
    """Модель, представляющая тип армирования стены из какого-л материала"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите тип армирования')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Тип армирования'
        verbose_name_plural = 'Типы армирования'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class ProviderActivityType(models.Model):
    """Модель, представляющая доступные наименования видов деятельности: проектирование, строительный подряд, поставка/продажа материалов, юридические услуги"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите наименование вида деятельности')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Доступный вид деятельности'
        verbose_name_plural = 'Доступные виды деятельности'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name


class TaxSystemType(models.Model):
    """Модель, представляющая доступные системы налогообложения"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите наименование системы налогообложения')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Система налогообложения'
        verbose_name_plural = 'Системы налогообложения'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class Provider(models.Model):
    """Модель, представляющая бренд, название поставщика: подрядчика, архитектора, продавца. У каждого бренда м.б. магазин, причем как один магазинчик, так и сеть по всей РФ и миру"""
    name = models.CharField(unique = True, max_length=200, help_text='Введите бренд продавца')
    primary_activity = models.ForeignKey('ProviderActivityType', on_delete=models.SET_NULL, null=True, help_text='Выберите основной вид деятельности', related_name = 'primary_activity') 
    secondary_activity = models.ManyToManyField(ProviderActivityType, help_text='Выберите дополнительные виды деятельности', related_name = 'secondary_activity') 
    tax_system = models.ManyToManyField(TaxSystemType, help_text='Выберите применяемые Вами системы налообложения (можно несколько)') 

    # Форма собственности
    OWNERSHIP_FORM = (
        ('p', 'Частное лицо'),
        ('c', 'Компания'),
    )   

    ownership_form = models.CharField(
        max_length=1,
        choices=OWNERSHIP_FORM,
        default='p',
        help_text='Выберите форму собственности',
    )

    class Meta:
        ordering = ('name',)
        verbose_name = 'Поставщик услуг/материалов'
        verbose_name_plural = 'Поставщики услуг/материалов'

    def __str__(self):
        """String for representing the Model object."""
        return self.name

class City(models.Model):
    """Модель, представляющая список городов"""
    name = models.CharField(unique = True, max_length=200, help_text='Введите город')

    class Meta:
        ordering = ('name',)
        verbose_name = 'Город'
        verbose_name_plural = 'Города'
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class ProviderOutlet(models.Model):
    """Модель, представляющая конкретный магазин или офис поставщика услуг/материалов. Он может быть один (ИП Иванов) или один из сети "Леруа" """
    name = models.ForeignKey('Provider', on_delete=models.CASCADE, help_text='Выберите поставщика, которому принадлежит этот офис,торговая точка')
    local_name = models.CharField(max_length=200, blank=True, help_text='Введите уточняющее название офиса или торговой точки. Например, Офис на Московской ')
    city = models.ForeignKey('City', on_delete=models.CASCADE)
    information = models.TextField(max_length=200, help_text='Контакты, адрес и т.д. продавца')
    owner = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'Торговая точка/офис'
        verbose_name_plural = 'Торговые точки/офисы'
   
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name.name} ({self.city.name}). {self.local_name}'

class RockWallMaterialStandardSize(models.Model):
    """Модель описывает стандартный размер общепринятого стенового каменного материала"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите общепринятую классификацию размера или название')
    a_size = models.IntegerField(blank=True)
    b_size = models.IntegerField(blank=True)
    c_size = models.IntegerField(blank=True)
    
    class Meta:
        ordering = ('name',)
        verbose_name = 'Размер каменного материала'
        verbose_name_plural = 'Размеры каменных материалов'
   
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.identifier})'

class MarkM(models.Model):
    """Модель описывает марки материалов с индексом М. Например, марка М300 или М125"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите марку М')
    
    class Meta:
        ordering = ('name',)
        verbose_name = 'Марка М'
        verbose_name_plural = 'Марки М'
   
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.identifier})'

class MarkD(models.Model):
    """Модель описывает марки материалов с индексом D. Обычно это марка газобетона по средней плотности. Например, D1000"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите марку D')
    
    class Meta:
        ordering = ('name',)
        verbose_name = 'Марка D'
        verbose_name_plural = 'Марки D'
   
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.identifier})'

class ClassBLight(models.Model):
    """Модель описывает классы материалов с индексом В. Обычно это марка бетона, газобетона. Например, В3,5 или В20"""
    identifier = models.CharField(unique = True, default = 'default_identifier', max_length=200, help_text='Уникальный неизменяемый идентификатор (только латинские символы)')
    name = models.CharField(max_length=200, help_text='Введите класс В')
    
    class Meta:
        ordering = ('name',)
        verbose_name = 'Класс В легкого бетона'
        verbose_name_plural = 'Классы В легких бетонов'
   
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.identifier})'

class RockWallMaterialUnit(models.Model):
    """Модель описывает единицу общепринятого стенового каменного материала. У единицы могут быть разные производители, названия, продавцы и конечно цена"""
    name = models.CharField(max_length=200, help_text='Введите общепринятое название данного материала')
    standard_size = models.ManyToManyField('RockWallMaterialStandardSize', help_text='Выберите тип стандартного размера, если есть', blank=True)
    a_size = models.IntegerField(blank=True, help_text='Введите размеры, если они нестандарнтые')
    b_size = models.IntegerField(blank=True)
    c_size = models.IntegerField(blank=True)
    mark_m = models.ManyToManyField(MarkM, help_text='Выберите стандартную марку М для данного материала, если есть', blank=True)
    mark_d = models.ManyToManyField(MarkD, help_text='Выберите стандартную марку D для данного материала, если есть', blank=True)
    class_b = models.ManyToManyField(ClassBLight, help_text='Выберите стандартный класс В для данного материала, если есть', blank=True)
    wall_material_type = models.ManyToManyField(WallMaterialType, help_text='Выберите тип стены, к которому отностится материал')
    application = models.ManyToManyField(Application, help_text='Выберите область применения материала')
    binding_solution = models.ManyToManyField(BinderSolutionType, help_text='Выберите тип связующего для данного материала')
    reinforcement_type = models.ManyToManyField(WallReinforcementType, help_text='Выберите тип армирования для данного материала')
    thermal_conductivity = models.IntegerField(help_text='Введите коэффициент теплопроводности')



    SIZE_TYPE = (
        ('bl', 'Блок'),
        ('br', 'Кирпич'),
    )   

    PRIMARY_OR_ADDITIONAL = (
        ('p', 'Основной'),
        ('a', 'Доборный'),
    )

    type_size = models.CharField(
        max_length=2,
        choices=SIZE_TYPE,
        # blank=True,
        default='br',
        help_text='Тип материала по размеру: блок или кирпич',
    )

    primary_or_additional = models.CharField(
        max_length=1,
        choices=PRIMARY_OR_ADDITIONAL,
        # blank=True,
        default='p',
        help_text='Тип элемента: основной или доборный',
    )

    class Meta:
        ordering = ('name',)
        verbose_name = 'Единица каменного материала'
        verbose_name_plural = 'Единицы каменных материалов'

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name} ({self.application.name})'

    def get_absolute_url(self):
        """Returns the url to access a detail record for this material."""
        return reverse('rock-wall-material-detail', args=[str(self.id)])


class RockWallMaterialPricePosition(models.Model):
    """Модель, представляющая запись с ценой. Содержит единицу общепринятого товара, но принадлежащую какому-то продавцу"""
    price = models.FloatField()
    name = models.ForeignKey('RockWallMaterialUnit', on_delete=models.CASCADE)
    owner = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'Ценовая позиция'
        verbose_name_plural = 'Ценовые позиции'
    
    def __str__(self):
        """String for representing the Model object."""
        return f'{self.name.name} ({self.price})'
