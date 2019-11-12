# Generated by Django 2.1.4 on 2019-11-12 10:42

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Application',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifier', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите применение материала, например, стеновой, облицовочный, цоколь', max_length=200)),
            ],
            options={
                'verbose_name': 'Область применения материала',
                'verbose_name_plural': 'Области применения материалов',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='BinderSolutionType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifiter', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите тип связующего раствора. Например, цементный раствор, клей на цементной основе и т.д.', max_length=200)),
            ],
            options={
                'verbose_name': 'Тип связующего раствора',
                'verbose_name_plural': 'Типы связующих растворов',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите город', max_length=200, unique=True)),
            ],
            options={
                'verbose_name': 'Город',
                'verbose_name_plural': 'Города',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='DirectProducer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите производителя материала. Например, Кощаковский завод, Чайковский и т.д.', max_length=200, unique=True)),
            ],
            options={
                'verbose_name': 'Производитель материала',
                'verbose_name_plural': 'Производители материалов (конкретные заводы)',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='ProductBrand',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите бренд, например, Wienerberger', max_length=200, unique=True)),
            ],
            options={
                'verbose_name': 'Бренд',
                'verbose_name_plural': 'Бренды',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='Provider',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите бренд продавца', max_length=200, unique=True)),
                ('ownership_form', models.CharField(choices=[('p', 'Частное лицо'), ('c', 'Компания')], default='p', help_text='Выберите форму собственности', max_length=1)),
            ],
            options={
                'verbose_name': 'Поставщик услуг/материалов',
                'verbose_name_plural': 'Поставщики услуг/материалов',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='ProviderActivityType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifiter', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите наименование вида деятельности', max_length=200)),
            ],
            options={
                'verbose_name': 'Доступный вид деятельности',
                'verbose_name_plural': 'Доступные виды деятельности',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='ProviderOutlet',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('local_name', models.CharField(blank=True, help_text='Введите уточняющее название офиса или торговой точки. Например, Офис на Московской ', max_length=200)),
                ('information', models.TextField(help_text='Контакты, адрес и т.д. продавца', max_length=200)),
                ('city', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalog.City')),
                ('name', models.ForeignKey(help_text='Выберите поставщика, которому принадлежит этот офис,торговая точка', on_delete=django.db.models.deletion.CASCADE, to='catalog.Provider')),
                ('owner', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Торговая точка/офис',
                'verbose_name_plural': 'Торговые точки/офисы',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='RockMaterialTech',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifier', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите технологию производства каменного стенового материала, например, газобетон, полнотелый, керамический', max_length=200)),
            ],
            options={
                'verbose_name': 'Технология производства материала',
                'verbose_name_plural': 'Технологии производства материалов',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='RockWallMaterialPricePosition',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('price', models.FloatField()),
            ],
            options={
                'verbose_name': 'Ценовая позиция',
                'verbose_name_plural': 'Ценовые позиции',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='RockWallMaterialUnit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Enter a name of this rock wall material (e.g. Blue midnight)', max_length=200)),
                ('a_size', models.IntegerField()),
                ('b_size', models.IntegerField()),
                ('c_size', models.IntegerField()),
                ('thermal_conductivity', models.IntegerField(help_text='Введите коэффициент теплопроводности')),
                ('type_size', models.CharField(choices=[('bl', 'Блок'), ('br', 'Кирпич')], default='br', help_text='Тип материала по размеру: блок или кирпич', max_length=2)),
                ('primary_or_additional', models.CharField(choices=[('p', 'Основной'), ('a', 'Доборный')], default='p', help_text='Тип элемента: основной или доборный', max_length=1)),
                ('application', models.ManyToManyField(help_text='Выберите область применения материала', to='catalog.Application')),
                ('binding_solution', models.ManyToManyField(help_text='Выберите тип связующего для данного материала', to='catalog.BinderSolutionType')),
            ],
            options={
                'verbose_name': 'Единица каменного материала',
                'verbose_name_plural': 'Единицы каменных материалов',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='TaxSystemType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifiter', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите наименование системы налогообложения', max_length=200)),
            ],
            options={
                'verbose_name': 'Система налогообложения',
                'verbose_name_plural': 'Системы налогообложения',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='TradeMark',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите торговую марку, например, Porotherm, Kerama и т.д.', max_length=200, unique=True)),
                ('brand', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='catalog.ProductBrand')),
            ],
            options={
                'verbose_name': 'Торговая марка',
                'verbose_name_plural': 'Торговые марки',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='TradeMarkSeries',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(help_text='Введите название серии товаров, если она есть', max_length=200, unique=True)),
                ('trademark', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalog.TradeMark')),
            ],
            options={
                'verbose_name': 'Товарная серия',
                'verbose_name_plural': 'Товарные серии (какой-либо марки)',
                'ordering': ('name',),
            },
        ),
        migrations.CreateModel(
            name='WallReinforcementType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifiter', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите тип армирования', max_length=200)),
            ],
            options={
                'verbose_name': 'Тип армирования',
                'verbose_name_plural': 'Типы армирования',
                'ordering': ('name',),
            },
        ),
        migrations.AddField(
            model_name='rockwallmaterialunit',
            name='reinforcement_type',
            field=models.ManyToManyField(help_text='Выберите тип армирования для данного материала', to='catalog.WallReinforcementType'),
        ),
        migrations.AddField(
            model_name='rockwallmaterialpriceposition',
            name='name',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='catalog.RockWallMaterialUnit'),
        ),
        migrations.AddField(
            model_name='rockwallmaterialpriceposition',
            name='owner',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='provider',
            name='primary_activity',
            field=models.ForeignKey(help_text='Выберите основной вид деятельности', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='primary_activity', to='catalog.ProviderActivityType'),
        ),
        migrations.AddField(
            model_name='provider',
            name='secondary_activity',
            field=models.ManyToManyField(help_text='Выберите дополнительные виды деятельности', related_name='secondary_activity', to='catalog.ProviderActivityType'),
        ),
        migrations.AddField(
            model_name='provider',
            name='tax_system',
            field=models.ManyToManyField(help_text='Выберите применяемые Вами системы налообложения (можно несколько)', to='catalog.TaxSystemType'),
        ),
    ]
