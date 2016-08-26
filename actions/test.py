# -*- coding: UTF-8 -*-

from uiautomator import device as d

class PhoneTest:
    def fc_close(self, device):
        if d(resourceId = 'com.android.incallui:id/endButton').exists:
            print('电话中。。。')
            d(resourceId = 'com.android.incallui:id/endButton').click()
        return True
    def click_text(self):
        print('aaaaa')
        d(text = 'aaa').click()


d.handlers.on(PhoneTest().fc_close)
PhoneTest().click_text()