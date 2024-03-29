# Generated by Django 2.1.4 on 2019-11-12 13:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0002_auto_20191112_1456'),
    ]

    operations = [
        migrations.CreateModel(
            name='WallMaterialType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('identifier', models.CharField(default='default_identifier', help_text='Уникальный неизменяемый идентификатор (только латинские символы)', max_length=200, unique=True)),
                ('name', models.CharField(help_text='Введите тип материала стены с точки зрения пользователя: кирпич полнотелый, газобетон и т.д.', max_length=200)),
                ('common_wall_type', models.CharField(choices=[('r', 'Каменый'), ('w', 'Деревянный')], default='r', help_text='Выберите: деревянный или каменный', max_length=1)),
            ],
            options={
                'verbose_name': 'Технология производства материала',
                'verbose_name_plural': 'Технологии производства материалов',
                'ordering': ('name',),
            },
        ),
        migrations.DeleteModel(
            name='RockMaterialTech',
        ),
        migrations.AddField(
            model_name='rockwallmaterialunit',
            name='wall_material_type',
            field=models.ManyToManyField(help_text='Выберите тип стены, к которому отностится материал', to='catalog.WallMaterialType'),
        ),
    ]
