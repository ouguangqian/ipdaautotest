# language: zh-CN

功能: 其他菜单中的应用测试：Qplay

    背景: 验证其他菜单中的应用
        当< 打开九宫格界面
        当< 打开其他菜单

    @qplayTest @ignore
      场景: 播放QPlay音乐，在standby状态下手机端退出车载模式，退出standby后“MainService”已停止运行 #83629
        当< 打开Qplay
        那么< 验证Qplay连接成功
        当< 选择Qplay歌曲
          |o_result|
          |o_name  |
        那么< 验证Qplay手机歌曲是否一致
          |chk_name|
          |o_name  |
        那么< 验证Qplay歌曲是否一致
          |chk_name|
          |o_name  |
        当< 手机退出车机模式
        那么< 验证当前为Qplay初始界面