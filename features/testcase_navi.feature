# language: zh-CN

功能: 导航功能验证

  @bluetooth_navi_test @ignore
    场景: 后台播放收音机，连接蓝牙后，回到主页点击导航，导航出现CRASH
        当< 断开蓝牙连接
        当< 回到系统主界面
        当< 打开收音机应用
        当< 打开FM_AM选择界面
        当< 播放指定FM节目
          |fm_no|
          |97.5 |
        当< 回到系统主界面
        当< 连接蓝牙
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |3         |
        那么< 验证当前为导航主界面
    @navi_main_test
    场景: 打开导航验证导航主界面元素正确
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        那么< 验证导航启动界面元素

      @search_city_address
    场景: 导航搜索到指定地址，验证选择地址和导航地址一致
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 选择导航搜索城市
          |city_name|
          |南京市      |
        当< 选择搜索的导航地址
          |address|o_result|
          |草场门  |o_address|
        当< 获取将要导航目的地地址
          |o_result|
          |o_dest_address|
        那么< 验证两个对象值
          |param1|option|param2|
          |o_address|==|o_dest_address|

    @chk_navi_elements_test
    场景: 导航到指定地址并验证导航界面元素正确性
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 选择导航搜索城市
          |city_name|
          |南京市      |
        当< 选择搜索的导航地址
          |address|o_result|
          |草场门  |o_address|
        当< 导航到目的地
        那么< 验证导航界面的元素


      @chk_navi_faved_test
    场景: 验证导航的地址收藏功能
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 选择导航搜索城市
          |city_name|
          |南京市      |
        当< 选择搜索的导航地址
          |address|o_result|
          |三山街  |o_address|
        当< 收藏或取消收藏导航地址
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 打开导航收藏
        那么< 验证地址是否被收藏
          |address|is_faved|
          |o_address|true  |
        当< 删除指定地址
          |address|
          |o_address|

    @chk_navi_faved_cancel_test
    场景: 验证导航的地址收藏取消功能
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 选择导航搜索城市
          |city_name|
          |南京市      |
        当< 选择搜索的导航地址
          |address|o_result|
          |软件大道  |o_address|
        当< 收藏或取消收藏导航地址
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 打开导航收藏
        当< 选择收藏的导航地址
          |address|
          |o_address  |
        当< 收藏或取消收藏导航地址
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 打开导航收藏
        那么< 验证地址是否被收藏
          |address|is_faved|
          |o_address|false  |

      @chk_del_fav_test
    场景: 验证导航的地址收藏功能
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 选择导航搜索城市
          |city_name|
          |南京市      |
        当< 选择搜索的导航地址
          |address|o_result|
          |新街口  |o_address|
        当< 收藏或取消收藏导航地址
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 打开导航收藏
        当< 删除指定地址
          |address|
          |o_address|
        当< 回到系统主界面
        当< 打开导航
        当< 延时
          |sleep_time|
          |5         |
        当< 打开导航搜索
        当< 打开导航收藏
        那么< 验证地址是否被收藏
          |address|is_faved|
          |o_address|false |

