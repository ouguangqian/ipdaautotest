# language: zh-CN

  @ivoka_test
功能: 对语音功能的验证

    背景: 语音验证

        @ivoka_audio_test
    场景: ivoka我要听时间都去哪儿了，跳转到网络音乐，但是停止状态，手动点一下才播放
        当< ivoka唤醒应用
            |voice_name|
            |我要听时间都去哪儿了.m4a|
        当< 延时
            |sleep_time|
            |10         |
        那么< 验证音乐名称一致
          |chk_music_name|
          |时间都去哪儿了|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
        那么< 验证放音通道一致
          |chk_tinymix|
          |ASP MEDIA Route|

    @ivoka_radio_test
    场景: 呼叫语音助理FM897打开收音机
        当< ivoka唤醒应用
          |voice_name|
          |FM897.m4a |
        当< 延时
          |sleep_time|
          |8         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |89.7     |
    @ivoka_usb_audio_test
    场景: 呼叫语音助理播放U盘音乐
        当< ivoka唤醒应用
          |voice_name|
          |听U盘音乐.m4a |
        当< 延时
          |sleep_time|
          |8        |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
        那么< 验证放音通道一致
          |chk_tinymix|
          |ASP MEDIA Route|
        那么< 验证当前为U盘音乐
    @ivoka_navi_test
    场景: 呼叫语音助理打开导航
        当< ivoka唤醒应用
          |voice_name|
          |打开导航.m4a|
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |导航|

    @ivoka_navi_nearby_test
    场景: 呼叫语音查找附近加油站打开导航并验证查询结果存在
        当< ivoka唤醒应用
          |voice_name|
          |附近的加油站.m4a|
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |导航|
        那么< 验证附近查询结果
          |nearby_title|
          |加油站         |

    @ivoka_audio_by_artist_test
    场景: 呼叫语音助理打开音乐
      当< ivoka唤醒应用
          |voice_name|
          |想听刘德华的歌.m4a|
      当< 延时
          |sleep_time|
          |20         |
      那么< 验证当前应用
          |chk_app_name|
          |音乐|
      那么< 验证歌手名字一致
          |chk_artist|
          |刘德华        |
      那么< 验证音乐是否播放
          |is_playing|
          |true     |

    @ivoka_video_test
    场景: 呼叫语音助理打开视频
      当< ivoka唤醒应用
          |voice_name|
          |看视频.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |视频|
    @ivoka_navi_to_radio_test
    场景: 语音从导航跳转到收音机
      当< 打开导航
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |导航|
      当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
      当< 延时
          |sleep_time|
          |1         |
      当< 播放音频文件
          |voice_file|
          |打开收音机.m4a|
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |电台|

    @ivoka_radio_to_audio_test
    场景: 语音从收音机换到音乐
      当< 打开收音机应用
      那么< 验证当前应用
          |chk_app_name|
          |电台|
      当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
      当< 延时
          |sleep_time|
          |1         |
      当< 播放音频文件
          |voice_file|
          |想听刘德华的歌.m4a|
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |音乐|
    @ivoka_cancel_test
    场景: 通过取消指令退出语音唤醒
      当< ivoka唤醒应用
          |voice_name|
          |取消.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |主界面|

    @ivoka_quit_test
    场景: 通过退出指令退出语音唤醒
      当< ivoka唤醒应用
          |voice_name|
          |退出.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |主界面|
    @ivoka_no_need_test
    场景: 通过不需要了指令退出语音唤醒
      当< ivoka唤醒应用
          |voice_name|
          |不需要了.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |主界面|
    @ivoka_no_need_test
    场景: 通过不要了指令退出语音唤醒
      当< ivoka唤醒应用
          |voice_name|
          |不要了.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |主界面|
    @ivoka_radio_test
    场景: 语音呼叫收音机指令打开收音机
      当< ivoka唤醒应用
          |voice_name|
          |收音机.m4a  |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |电台|
    @ivoka_radio_test
    场景: 语音听广播指令打开收音机
      当< ivoka唤醒应用
          |voice_name|
          |听广播.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |电台|
    @ivoka_radio_test
    场景: 语音我想听收音机指令打开收音机
      当< ivoka唤醒应用
          |voice_name|
          |我想听收音机.m4a   |
      当< 延时
          |sleep_time|
          |10         |
      那么< 验证当前应用
          |chk_app_name|
          |电台|
    @ivoka_radio_test
    场景: 语音搜台指令打开收音机
      当< ivoka唤醒应用
          |voice_name|
          |搜台.m4a   |
      当< 延时
          |sleep_time|
          |5      |
      那么< 验证当前界面包含文本
          |contains_txt|
          |电台扫描中       |
      那么< 验证当前应用
          |chk_app_name|
          |电台|
    @ivoka_radio_test
    场景: 呼叫语音助理调频897打开收音机
        当< ivoka唤醒应用
          |voice_name|
          |调频89.7.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |89.7     |
    @ivoka_radio_test
    场景: 呼叫语音助理我想听FM897打开收音机
        当< ivoka唤醒应用
          |voice_name|
          |我想听FM89.7.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |89.7     |
    @ivoka_radio_test
    场景: 语音收听FM897打开收音机
        当< ivoka唤醒应用
          |voice_name|
          |收听FM89.7.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |89.7     |
    @ivoka_radio_test
    场景: 语音播放调频FM897打开收音机
        当< ivoka唤醒应用
          |voice_name|
          |播放调频FM89.7.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |89.7     |
    @ivoka_radio_test
    场景: 语音我要听音乐台打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |我要听音乐台.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |101.7     |
    @ivoka_radio_test
    场景: 语音我要听交通台打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |收听交通台.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |105.7    |
      @ivoka_radio_next_test
    场景: 语音下一首换台收音机
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 随机播放FM节目
          |o_result|
          |o_fm_no|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |o_fm_no     |
        当< 切换上一台
        那么< 验证播放的FM编号不一致
          |chk_fm_no|
          |o_fm_no    |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1        |
        当< 播放音频文件
          |voice_file|
          |下一首.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |o_fm_no     |
        那么< 验证电台是否播放
        |chk_is_playing|
        |true         |


    @ivoka_radio_prev_test
    场景: 语音上一首换台收音机
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 随机播放FM节目
          |o_result|
          |o_fm_no|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |o_fm_no    |
        当< 切换下一台
        那么< 验证播放的FM编号不一致
          |chk_fm_no|
          |o_fm_no     |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1        |
        当< 播放音频文件
          |voice_file|
          |上一首.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |o_fm_no     |
        那么< 验证电台是否播放
          |chk_is_playing|
          |true         |

    @ivoka_radio_test
    场景: 语音我要听新闻广播打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |我要听新闻广播.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |104.5    |
    @ivoka_radio_test
    场景: 语音交通台打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |交通台.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |105.7    |
    @ivoka_radio_test
    场景: 语音江苏人民广播电台打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |江苏人民广播电台.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |93.7    |
    @ivoka_radio_test
    场景: 语音浙江城市之声打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |浙江城市之声.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |107.0    |
    @ivoka_radio_test
    场景: 语音我要听南京人民广播电台打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |我要听南京人民广播电台.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |106.9    |
    @ivoka_radio_test
    场景: 语音收听南京新闻综合广播打开收音机
#        当< 打开收音机应用
#        当< 打开FM_AM选择界面
#        当< 播放指定FM节目
#          |fm_no|
#          |97.5 |
#        那么< 验证播放的FM编号一致
#          |chk_fm_no|
#          |97.5     |
#        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |收听南京新闻综合广播.m4a |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |电台|
        那么< 验证播放的FM编号一致
          |chk_fm_no|
          |106.9    |
    @ivoka_audio_test
    场景: 语音听音乐打开音乐应用
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |听音乐.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音网络音乐打开音乐应用
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |网络音乐.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐名称不一致
          |chk_music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音打开音乐打开音乐应用
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |打开音乐.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音播放忘情水打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |播放忘情水.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐名称一致
          |chk_music_name|
          |忘情水       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音来一首电台情歌打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |来一首电台情歌.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐名称一致
          |chk_music_name|
          |电台情歌       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音来首两只蝴蝶打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |来首两只蝴蝶.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐名称一致
          |chk_music_name|
          |两只蝴蝶       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音我要听时间都去哪儿了打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |我要听时间都去哪儿了.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐名称一致
          |chk_music_name|
          |时间都去哪儿了       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音来几首张学友的歌打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |来几首张学友的歌.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证歌手名字一致
          |chk_artist|
          |张学友       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音我要听周华健的歌打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |我要听周华健的歌.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证歌手名字一致
          |chk_artist|
          |周华健       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音我想听一下张学友的吻别打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |我想听一下张学友的吻别.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证歌手名字一致
          |chk_artist|
          |张学友       |
      那么< 验证音乐名称一致
          |chk_music_name|
          |吻别       |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音随便听听打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |随便听听.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_audio_test
    场景: 语音给我推荐几首新歌打开音乐应用
        当< ivoka唤醒应用
          |voice_name|
          |给我推荐几首新歌.m4a   |
        当< 延时
          |sleep_time|
          |10         |
        那么< 验证当前应用
          |chk_app_name|
          |音乐|
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_cancel_in_audio_playing_test
    场景: 音乐播放中调用ivoka并取消
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1        |
        当< 播放音频文件
          |voice_file|
          |取消.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
    @ivoka_play_in_pause_radio_test
    场景: 收音机暂停状态，语音播放收音机，验证收音机播放状态
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 随机播放FM节目
          |o_result|
          |o_fm_no|
        那么< 验证电台是否播放
          |chk_is_playing|
          |true          |
        当< 播放或暂停FM电台
        那么< 验证电台是否播放
          |chk_is_playing|
          |false         |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1       |
        当< 播放音频文件
          |voice_file|
          |播放.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证电台是否播放
          |chk_is_playing|
          |true         |
    @ivoka_audio_next_test
    场景: 语音播放下一首音乐
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐名称一致
          |chk_music_name|
          |小城故事       |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1        |
        当< 播放音频文件
          |voice_file|
          |下一首.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证音乐名称不一致
          |chk_music_name|
          |小城故事       |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
    @ivoka_pause_audio_test
    场景: 语音暂停音乐
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1        |
        当< 播放音频文件
          |voice_file|
          |暂停.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证音乐是否播放
          |is_playing|
          |false      |
    @ivoka_pause_audio_test
    场景: 语音播放音乐
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |
        当< 播放或暂停音乐
        那么< 验证音乐是否播放
          |is_playing|
          |false      |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1      |
        当< 播放音频文件
          |voice_file|
          |播放.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证音乐是否播放
          |is_playing|
          |true      |

      @ivoka_pause_radio_test
    场景: 语音暂停收音机，验证收音机播放状态
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 随机播放FM节目
          |o_result|
          |o_fm_no|
        那么< 验证电台是否播放
          |chk_is_playing|
          |true          |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1       |
        当< 播放音频文件
          |voice_file|
          |暂停.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证电台是否播放
          |chk_is_playing|
          |false         |
    @ivoka_radio_to_video_test
    场景: 打开收音机，ivoka打开视频，验证放音通道在收音机通道
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 随机播放FM节目
          |o_result|
          |o_fm_no|
        那么< 验证电台是否播放
          |chk_is_playing|
          |true          |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1       |
        当< 播放音频文件
          |voice_file|
          |看视频.m4a|
        当< 延时
          |sleep_time|
          |5        |
        那么< 验证当前应用
          |chk_app_name|
          |视频     |
        那么< 验证放音通道一致
          |chk_tinymix|
          |ASP RADIO Route|

      @launcher_check_test
    场景: 验证主界面元素是否正确 主要时间，温度，欢迎语
        那么< 验证主界面元素

        @ivoka_bluetooth_test @ignore
    场景: 语音我要听蓝牙音乐
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐名称一致
          |chk_music_name|
          |小城故事            |
        当< 手机播放QQ音乐
        当< 回到系统主界面
        当< ivoka唤醒应用
          |voice_name|
          |我要听蓝牙音乐.m4a|
        当< 延时
          |sleep_time|
          |8        |
        那么< 验证音乐名称不一致
          |chk_music_name|
          |小城故事            |
        那么< 验证音乐是否播放
          |is_playing|
          |true     |
        那么< 验证放音通道一致
          |chk_tinymix|
          |ASP MEDIA Route|


          @ivoka_video_test
    场景: 语音我要看魔兽打开视频搜索界面并出现搜索结果
        当< ivoka唤醒应用
          |voice_name|
          |我要看魔兽.m4a|
        当< 延时
          |sleep_time|
          |10      |
        那么< 验证当前应用
          |chk_app_name|
          |视频     |
        那么< 验证视频搜索结果
          |search_word|
          |魔兽         |

            @ivoka_setting_test
    场景: ivoka打开设置验证设置界面打开正确
      当< ivoka唤醒应用
          |voice_name|
          |打开设置.m4a  |
      当< 延时
          |sleep_time|
          |10      |
      那么< 验证当前应用
          |chk_app_name|
          |设置     |

    @ivoka_tianqi_test
    场景: ivoka查询天气
      当< ivoka唤醒应用
      |voice_name|
      |南京的天气.m4a |
      当< 延时
      |sleep_time|
      |3        |
      那么< 验证天气信息

    @ivoka_tianqi_in_app_test
    场景: 音乐界面ivoka查询天气
      当< 打开音乐应用
      当< 打开我的音乐库
      当< 播放本地指定音乐
      |music_name|
      |小城故事        |
      当< 播放音频文件
      |voice_file|
      |你好语音助理.m4a|
      当< 延时
      |sleep_time|
      |1         |
      当< 播放音频文件
      |voice_file|
      |南京的天气.m4a|
      当< 延时
      |sleep_time|
      |3        |
      那么< 验证天气信息
      当< 延时
      |sleep_time|
      |15        |
      那么< 验证当前应用
      |chk_app_name|
      |音乐     |

    @ivoka_flght_test
    场景: ivoka查询航班信息
      当< ivoka唤醒应用
      |voice_name|
      |到北京的航班.m4a |
      当< 延时
      |sleep_time|
      |3        |
      那么< 验证航班信息

    @ivoka_shares_test
    场景: ivoka查询证券指数
      当< ivoka唤醒应用
      |voice_name|
      |今天大盘怎么样.m4a|
      当< 延时
      |sleep_time|
      |3        |
      那么< 验证证券信息

    @ivoka_add_volume_test
    场景: ivoka降低音乐音量，验证音乐音量降低，并且正常播放
      当< 打开音乐应用
      当< 打开我的音乐库
      当< 播放本地指定音乐
      |music_name|
      |小城故事        |
      当< 获取MEDIA音量
      |o_result|
      |o_volume|
      当< 播放音频文件
      |voice_file|
      |你好语音助理.m4a|
      当< 延时
      |sleep_time|
      |1         |
      当< 播放音频文件
      |voice_file|
      |降低声音.m4a|
      当< 延时
      |sleep_time|
      |3       |
      当< 获取MEDIA音量
      |o_result|
      |o_volume1|
      那么< 验证两个对象值
      |param1|option|param2|
      |o_volume1|<|o_volume|
      那么< 验证音乐是否播放
      |is_playing|
      |true      |
      那么< 验证放音通道一致
      |chk_tinymix|
      |ASP MEDIA Route|

      @ivoka_quit_music_test
    场景: 语音退出音乐，验证当前界面为主界面，不是音乐播放界面  #87063
        当< 打开音乐应用
        当< 打开我的音乐库
        当< 播放本地指定音乐
          |music_name|
          |小城故事        |
        那么< 验证音乐名称一致
          |chk_music_name|
          |小城故事            |
        当< 播放音频文件
          |voice_file|
          |你好语音助理.m4a|
        当< 延时
          |sleep_time|
          |1         |
        当< 播放音频文件
          |voice_file|
          |退出音乐.m4a|
        当< 延时
          |sleep_time|
          |5      |
        那么< 验证当前应用
          |chk_app_name|
          |主界面     |

    @radio-ivoka-radio-test
    场景: 语音播放界面ivoka大盘信息点击帮助按钮收音机播放状态正常
      当< 打开收音机应用
      当< 打开FM_AM选择界面
      当< 随机播放FM节目
      |o_result|
      |o_fm_no|
      当< 播放音频文件
      |voice_file|
      |你好语音助理.m4a|
      当< 延时
      |sleep_time|
      |1         |
      当< 播放音频文件
      |voice_file|
      |今天大盘怎么样.m4a|
      当< 延时
      |sleep_time|
      |3        |
      那么< 验证证券信息
      当< 点击语音帮助按钮
      当< 回到系统主界面
      当< 打开收音机应用
      那么< 验证电台是否播放
      |chk_is_playing|
      |true         |


























