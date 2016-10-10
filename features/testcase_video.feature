# language: zh-CN
@video2test
功能: 视频功能验证

      @video_down_voice_test
    场景: 播放视频时，ivoka“降低声音”，会切换到音乐界面
        当< 打开九宫格界面
        当< 打开视频应用
        当< 打开爱奇艺顶部菜单
        当< 打开我的视频
        当< 打开本地视频
        当< 播放本地视频
          |video_name|
          |MOV格式.mov|
        当< 延时
          |sleep_time|
          |5         |
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
          |3         |
        那么< 验证当前应用
          |chk_app_name|
          |视频     |

    @video_call_test @ignore
    场景: 视频播放中，拨号10086后，系统弹出“NetVideoUI无响应”显示
        当< 打开九宫格界面
        当< 打开视频应用
        当< 打开爱奇艺顶部菜单
        当< 打开我的视频
        当< 打开本地视频
        当< 播放本地视频
            |video_name|
            |MOV格式.mov|
        当< 手机拨打号码
            |phone_no|
            |10086   |
        当< 延时
          |sleep_time|
          |10         |
        当< 手机挂断电话
        那么< 验证视频是否播放
          |chk_is_playing|
          |true          |

    @search_video_from_net_test
    场景: 网络搜索视频并播放
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |魔兽  |
      当< 从搜索结果中播放指定视频
        |video_name|
        |魔兽    |
      那么< 验证视频播放名称一致
        |chk_name|
        |魔兽     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_test
    场景: 播放本地系统自带视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开本地视频
      当< 播放本地视频
        |video_name|
        |IPDA.mp4     |
      当< 延时
        |sleep_time|
        |3         |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_flv_test
    场景: 播放本地FLV视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开本地视频
      当< 播放本地视频
        |video_name|
        |FLV格式.flv     |
      那么< 验证视频播放名称一致
        |chk_name|
        |FLV格式.flv     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_mov_test
    场景: 播放本地MOV视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开本地视频
      当< 播放本地视频
        |video_name|
        |MOV格式.mov|
      那么< 验证视频播放名称一致
        |chk_name|
        |MOV格式.mov     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_mp4_test
    场景: 播放本地MP4视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开本地视频
      当< 播放本地视频
        |video_name|
        |MP4格式.mp4     |
      那么< 验证视频播放名称一致
        |chk_name|
        |MP4格式.mp4     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @play_local_video_avi_test
    场景: 播放本地AVI视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开本地视频
      当< 播放本地视频
        |video_name|
        |AVI格式.avi     |
      那么< 验证视频播放名称一致
        |chk_name|
        |AVI格式.avi     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

    @clear_search_keyword_test
    场景: 清空视频搜索历史，验证搜索历史是否清空
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |魔兽  |
      当< 延时
        |sleep_time|
        |30         |
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 清空视频搜索记录并验证

    @play_from_playHis_test
    场景: 从播放记录中播放视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 输入视频搜索关键字
        |keyword|
        |魔兽    |
      当< 从搜索结果中播放指定视频
        |video_name|
        |魔兽    |
      当< 延时
        |sleep_time|
        |10         |
    #  从播放记录中播放
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开播放记录
      当< 从播放记录中播放指定视频
        |video_name|
        |魔兽     |
      那么< 验证视频播放名称一致
        |chk_name|
        |魔兽     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |

      @play_from_hot_to_his_test
    场景: 验证视频搜索中第一个搜索记录为最近搜索的关键词
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 搜索热门搜索视频
        |o_result|
        |o_video_name|
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开视频搜索
      当< 获取最新搜索记录
        |o_result|
        |o_video_name1|
      那么< 验证两个对象值
        |param1|option|param2|
        |o_video_name|==|o_video_name1|

        @aiqiyi_recommend_test
    场景: 播放爱奇艺推荐视频
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开爱奇艺频道菜单
      当< 打开推荐视频界面
      当< 播放爱奇艺推荐视频
        |o_result|
        |o_video_name|
      那么< 验证视频播放名称一致
        |chk_name|
        |o_video_name     |
      那么< 验证视频是否播放
        |chk_is_playing|
        |true          |
      那么< 验证放音通道一致
        |chk_tinymix|
        |ASP MEDIA Route|
      当< 回到系统主界面
      当< 打开九宫格界面
      当< 打开视频应用
      当< 打开爱奇艺顶部菜单
      当< 打开我的视频
      当< 打开播放记录
      当< 获取最新播放记录视频
        |o_result|
        |o_play_his1|
      那么< 验证两个对象值
        |param1|option|param2|
        |o_video_name|==|o_play_his1|












