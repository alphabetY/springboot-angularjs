
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
     <script src="${request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
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
                        text: '预算 vs 开销（Budget vs spending）',
                        subtext: '纯属虚构'
                    },
                    tooltip : {
                        trigger: 'axis'
                    },
                    legend: {
                        orient : 'vertical',
                        x : 'right',
                        y : 'bottom',
                        data:['预算分配（Allocated Budget）']
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
                               { text: '1', max: 6000},
                               { text: '2', max: 6000},
                               { text: '3', max: 6000},
                               { text: '4', max: 6000},
                               { text: '5', max: 6000},
                               { text: '6', max: 6000},
                               { text: '7', max: 6000},
                               { text: '8', max: 6000},
                               { text: '9', max: 6000},
                               { text: '10', max: 6000},
                               { text: '11', max: 6000},
                               { text: '12', max: 6000},
                               { text: '13', max: 6000},
                               { text: '14', max: 6000},
                               { text: '15', max: 6000},
                               
                            ]
                        }
                    ],
                    calculable : true,
                    series : [
                        {
                            name: '预算 vs 开销（Budget vs spending）',
                            type: 'radar',
                            data : [
                                {
                                    value : nn,
                                    name : '预算分配（Allocated Budget）'
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