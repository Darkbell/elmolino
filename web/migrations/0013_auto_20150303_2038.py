# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0012_auto_20150303_1702'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='producto',
            name='imagen1',
        ),
        migrations.RemoveField(
            model_name='producto',
            name='imagen2',
        ),
    ]
