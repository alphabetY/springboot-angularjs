
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
     <script src="${request.contextPath}/js/jquery-1.11.1.min.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px"></div>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/radar' // 使用柱状图就加载bar模块，按需加载
            ],
            
         function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                var  nn=[4300, 4300, 4300, 4300, 4300, 4300];

                $.ajaxSettings.async = false; 
           
                 $.post('${request.contextPath}/xiangliao/tubiao1',
                 function(response) {  
                      nn = response;}, 
                      "json");
        
           





                option = {
                    title : {
                        text: '假数据',
                        subtext: '假数据'
                    },
                    tooltip : {
                        trigger: 'axis'
                    },
                    legend: {
                        orient : 'vertical',
                        x : 'right',
                        y : 'bottom',
                        data:['分布']
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    polar : [
                       {
                           indicator : [
                               { text: '（清）青香', max: 20},
                               { text: '豆香', max: 20},
                               { text: '膏香', max: 20},
                               { text: '果香', max: 20},
                               { text: '花香', max: 20},
                               { text: '坚果香', max: 20},
                               { text: '焦甜香', max: 20},
                               { text: '木香', max: 20},
                               { text: '奶香韵', max: 20},
                               { text: '酸香', max: 20},
                               { text: '甜香', max: 20},
                               { text: '辛香', max: 20},
                               { text: '药香', max: 20},
                               { text: '脂蜡香', max: 20},
                               
                               
                            ]
                        }
                    ],
                    calculable : true,
                    series : [
                        {
                            name: '假数据',
                            type: 'radar',
                            data : [
                                {
                                    value : nn,
                                    name : '比值和（Allocated Budget）'
                                },
                                
                            ]
                        }
                    ]
                };
                                    
                	                    
                // 为echarts对象加载数据 
                myChart.setOption(option); 
            }
        );
    </script>
    
    
   
</body>