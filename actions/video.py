# -*- coding: UTF-8 -*-
from support.global_vars import d, ver_flag
from utils.utils import Utils


class Video:

    def __init__(self):
        # 新旧版本的pkgname判断
        global pkg_name
        if ver_flag:
            pkg_name = "pateo.dls.app.videoui"
        else:
            pkg_name = "com.qiyi.video.auto"

    # 获取爱奇艺顶部菜单
    def get_aqy_home_top_menu(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/home_top_menu')

    # 获取右上角推荐视频文件名
    def get_aqy_recommend_right_up_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/recommend_focus_item_right_title_up')

    # 获取顶部菜单栏frame
    def get_aqy_left_menu_frame(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/id_left_menu_frame2')

    # 获取爱奇艺我的视频
    def get_aqy_menu_mine(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/menu_my_iv')

    # 获取爱奇艺我的视频的本地视频
    def get_aqy_menu_mine_local_video(self):
        return Utils().get_ele_by_text('本地视频')
    # 获取爱奇艺我的视频的我的收藏
    def get_aqy_menu_mine_fav(self):
        return Utils().get_ele_by_text('我的收藏')
    # 获取爱奇艺我的视频的播放记录
    def get_aqy_menu_mine_his(self):
        return Utils().get_ele_by_text('播放记录')

    # 获取退出爱奇艺视频播放界面
    def get_aqy_playing_back(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/player_top_back')

    # 获取正在播放的视频标题
    def get_aqy_playing_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/player_top_title')

    # 获取广告时间控件
    def get_aqy_player_top_adtime(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/player_top_adtime')

    # 获取视频播放时间
    def get_aqy_player_currentTime(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/currentTime')

    # 获取视频收藏控件
    def get_aqy_player_fav(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/favor_check')

    # 获取视频播放，暂停控件
    def get_aqy_pause_btn(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/btn_pause')

    # 获取视频搜索控件
    def get_aqy_search(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/menu_search')

    # 获取视频搜索输入框
    def get_aqy_search_input(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/search_border_search_input')

    # 获取视频搜索取消
    def get_aqy_search_cancel(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/activity_search_title_cancel')

    # 获取清除搜索记录列表
    def get_aqy_search_his_clear(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/activity_search_clear')
    # 获取搜索记录视图
    def get_aqy_search_his_view(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/activity_search_flowlayout_history')

    # 获取爱奇艺频道控件
    def get_aqy_menu_category(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/menu_category_iv')

    # 获取爱奇艺推荐视频频道
    def get_aqy_menu_category_recommend(self):
        return Utils().get_ele_by_text('推荐')

    # 获取爱奇艺搜索历史列表
    def get_aqy_search_result_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/search_result_title')

    # 获取本地视频名称
    def get_aqy_mine_local_video_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/favor_title')

    # 获取播放记录视频名称
    def get_aqy_mine_his_video_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/favor_title')

    # 获取我的收藏视频名称
    def get_aqy_mine_fav_video_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/favor_title')

    # 获取视频搜索列表
    def get_aqy_search_result_list(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/search_result_nfilm_recv')













    # 获取我的视频库控件
    def __get_video_mine_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':drawable/net_video_menu_my')
    # 获取本地视频控件
    def __get_video_mine_local_video_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_my_top_localVideoText')

    # 获取视频的Home控件
    def __get_video_home_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':drawable/net_video_menu_home')
    # 获取视频返回控件
    def __get_video_playing_back_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_play_iqiyi_back')

    # 获取播放中的视频名字控件
    def __get_video_playing_name_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_play_iqiyi_name')

    # 获取视频搜索控件
    def __get_video_search_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':drawable/net_video_menu_search')

    # 获取视频搜索界面关键字输入框
    def __get_video_search_keyword_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/search_keyword')
    # 获取视频搜索界面的清空搜索框控件
    def __get_video_search_clear_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/icon_search_clear')

    # 获取我的视频中的播放记录控件
    def __get_video_mine_play_his_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_my_top_recordListText')
    # 获取搜索视频界面中的第一个热门搜索
    def __get_video_search_hot_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_search_cur_hot_item1')

    # 点击搜索视频界面中的第一个热门搜索
    # 返回播放视频的名字
    def click_video_search_hot_ele(self):
        ele = self.__get_video_search_hot_ele()
        if ele.wait.exists():
            ret = ele.text.strip()
            ele.click.wait()
            return ret
        else:
            Utils().raise_Exception_info('热门搜索为空')

    # 获取搜索视频界面的第一个搜索记录
    def __get_video_search_his_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_search_history_item1')
    # 获取我的发现视频控件
    def __get_video_find_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':drawable/net_video_menu_find')
    #获取我的发现视频栏目信息
    def get_video_find_channel_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_find_frame1_Image1_Text_name')
    # 获取发现视频栏目窗口属性
    def __get_video_find_channel_drawer_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/findChannel_drawer')
    # 获取栏目的内容控件
    def get_video_find_channel_item_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/videoItemText_find_popup')
    # 获取爱奇艺视频控件
    def get_video_aiqiyi_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':drawable/net_video_menu_recommended')
    # 获取爱奇艺推荐视频控件
    def get_video_aiqiyi_recommend_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_recommend_frame1_Image1_Text_name')
    #获取爱奇艺观看记录
    def get_video_aiqiyi_his_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_recommend_history_Image1_Text_Name')
    # 获取爱奇艺猜你喜欢控件
    def get_video_aiqiyi_guess_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_recommend_guessyoulike_Image1_Text_Name')

    # 隐藏发现视频栏目窗口
    def hide_video_find_channel_drawer_ele(self):
        ele = self.__get_video_find_channel_drawer_ele()
        if ele.wait.exists():
            # 获取窗口坐标
            x = ele.info['bounds']['right']
            y = int(ele.info['bounds']['bottom']) / 2
            # 滑动
            d.swipe(x, y, 0, y, 30)
        else:
            Utils().raise_Exception_info('视频栏目不存在')


    # 点击我的发现视频
    def click_video_find_ele(self):
        ele = self.__get_video_find_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('我的发现视频控件不存在')
    # 点击搜索视频界面中的第一个搜索记录
    def click_video_search_his_ele(self):
        ele = self.__get_video_search_his_ele()
        if ele.wait.exists():
            ret = ele.text.strip()
            ele.click.wait()
            return ret
        else:
            Utils().raise_Exception_info('搜索记录为空')


    # 点击我的视频中的播放记录控件
    def click_video_mine_play_his_ele(self):
        ele = self.__get_video_mine_play_his_ele()
        if ele.wait.exists():
            ele.click()
        else:
            Utils().raise_Exception_info('播放记录控件不存在')
    # 获取我的播放记录列表
    def get_video_mine_play_his_list_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_grid_view_my_playrecord')

    # 获取搜索内容列表
    def get_video_search_list_ele(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/net_video_grid_view_search_grid_result_list')

    # 获取搜索视频标题
    def get_video_search_list_title(self):
        return Utils().get_ele_by_resourceId(pkg_name + ':id/videoItemText')

    # 点击视频搜索控件
    def click_video_search_clear_ele(self):
        ele = self.__get_video_search_clear_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('清空搜索框内容控件不存在')
    # 点击视频搜索控件
    def click_video_search_ele(self):
        ele = self.__get_video_search_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('视频搜索控件不存在')

    # 获取播放中的视频名字文本
    def get_video_playing_name_txt(self):
        video_name = ""

        if self.get_video_is_playing():
            self.click_video_playing_screen()
        ele = self.__get_video_playing_name_ele()

        if ele.wait.exists():
            video_name = ele.text.strip()

        return video_name

    # 点击播放视频返回控件
    def click_video_playing_back_ele(self):
        ele = self.__get_video_playing_back_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('视频播放界面的返回控件不存在')
    # 点击播放中的视频
    def click_video_playing_screen(self):

        x = int(d.info['displayWidth']) / 2
        y = int(d.info['displayHeight']) / 2
        d.click(x, y)

    # 点击我的视频库
    def click_video_mine_ele(self):
        ele = self.__get_video_mine_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('我的视频库控件不存在')

    # 点击本地视频
    def click_video_mine_local_video_ele(self):
        ele = self.__get_video_mine_local_video_ele()
        if ele.wait.exists():
            ele.click()
        else:
            Utils().raise_Exception_info('本地视频控件不存在')

    # 播放指定本地视频
    def click_video_mine_local_video_by_name(self, video_name):
        ele = d(text = video_name, resourceId = pkg_name + ':id/local_video_item_name')
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('本地视频《' + video_name + '》不存在')

    # 输入视频搜索关键字
    def input_video_search_keyword_ele(self, key_word):
            ele = self.__get_video_search_keyword_ele()
            if ele.wait.exists():
                ele.set_text(Utils().unicode_input(key_word))

    # 查看视频是否播放
    #True ： 在播放
    #False:  没有在播放
    def get_video_is_playing(self):

        back_ele = self.__get_video_playing_back_ele()
        home_ele = self.__get_video_home_ele()
        if not home_ele.wait.gone():
            Utils().raise_Exception_info('视频不在播放界面')
        else:
            if back_ele.wait.gone(timeout = Utils().TIME_OUT):
                return True
            else:
                return False



    # 点击视频Home控件
    def click_video_home_ele(self):
        ele = self.__get_video_home_ele()
        if ele.wait.exists():
            ele.click.wait()
        else:
            Utils().raise_Exception_info('视频Home控件不存在')

    # 返回主界面
    def back_to_launcher(self):

        #  判断当前是否在视频播放界面
        video_back = self.get_aqy_playing_back()
        if video_back.wait.exists():
            video_back.click.wait()

        d.click(641, 641)

        # if self.__get_video_home_ele().wait.exists():
        #     self.click_video_home_ele()
        # elif self.__get_video_find_channel_drawer_ele().wait.exists():
        #     self.hide_video_find_channel_drawer_ele()
        #     self.click_video_home_ele()
        #     # 视频在播放中
        # else:
        #     self.click_video_playing_screen()
        #     self.click_video_playing_back_ele()
        #     if self.__get_video_find_channel_drawer_ele().wait.exists():
        #         self.hide_video_find_channel_drawer_ele()
        #     self.click_video_home_ele()




