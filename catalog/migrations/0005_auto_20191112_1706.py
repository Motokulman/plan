# Generated by Django 2.1.4 on 2019-11-12 14:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0004_auto_20191112_1620'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='DirectProducer',
            new_name='Producer',
        ),
        migrations.AlterModelOptions(
            name='wallmaterialtype',
            options={'ordering': ('name',), 'verbose_name': 'Тип несущей части стены', 'verbose_name_plural': 'Типы несущей части стены'},
        ),
    ]
