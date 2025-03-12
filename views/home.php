<div class="row">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <label for="total-price-per-month-from" class="form-label">From:</label>
                        <input type="date" name="total-price-per-month-from"
                               class="form-control total-price-per-month-input-helper" id="total-price-per-month-from">
                    </div>
                    <div class="col-md-6">
                        <label for="total-price-per-month-to" class="form-label">To:</label>
                        <input type="date" name="total-price-per-month-to"
                               class="form-control total-price-per-month-input-helper" id="total-price-per-month-to">
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="chart">
                    <div class="chartjs-size-monitor">
                        <div class="chartjs-size-monitor-expand">
                            <div class=""></div>
                        </div>
                        <div class="chartjs-size-monitor-shrink">
                            <div class=""></div>
                        </div>
                    </div>
                    <div class="total-price-per-month-canvas">
                        <canvas id="total-price-per-month"
                                style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 634px;"
                                class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- ============= ============= ============= ============= ============= ============= =============-->


    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-12">
                        <label for="total-price-per-title-input" class="form-label">Book title:</label>
                        <input type="text"
                               name="total-price-per-title-input"
                               class="form-control"
                               id="total-price-per-title-input">
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="chart">
                    <div class="total-price-per-title-canvas">
                        <canvas id="total-price-per-title"
                                style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 634px;"
                                class="chartjs-render-monitor"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"></div>
            <div class="card-body"></div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header"></div>
            <div class="card-body"></div>
        </div>
    </div>
</div>

<script>

    // Dodajte ove promenljive na početak skripte
    let totalPricePerMonthChart = null;
    let totalPricePerTitleChart = null;

    $(document).ready(function () {
        generateTotalPricePerMonth($("#total-price-per-month-from").val(), $("#total-price-per-month-to").val());
        generateTotalPricePerTitle($("#total-price-per-title-input").val());

        $(".total-price-per-month-input-helper").change(function () {
            generateTotalPricePerMonth($("#total-price-per-month-from").val(), $("#total-price-per-month-to").val());
        });

        $("#total-price-per-title-input").keyup(function () {
            generateTotalPricePerTitle($("#total-price-per-title-input").val());
        });
    });

    function generateTotalPricePerMonth(dateFrom, dateTo) {

        // Uništi postojeći grafikon ako postoji
        if (totalPricePerMonthChart) {
            totalPricePerMonthChart.destroy();
            totalPricePerMonthChart = null;
        }

        $("#total-price-per-month-canvas").empty();
        $("#total-price-per-month-canvas").append(
            '<canvas id="total-price-per-month"' +
            'style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 634px;"' +
            'class="chartjs-render-monitor"></canvas>'
        );

        if (!dateFrom) {
            dateFrom = new Date();
            dateFrom.setMonth(dateFrom.getMonth() - 6);
            dateFrom = new Date(dateFrom).toISOString().split('T')[0];

            $("#total-price-per-month-from").val(dateFrom);
        }

        if (!dateTo) {
            dateTo = new Date();
            dateTo = new Date(dateTo).toISOString().split('T')[0];

            $("#total-price-per-month-to").val(dateTo);
        }

        let url = `/reportTotalPricePerMonth?dateFrom=${dateFrom}&dateTo=${dateTo}`;

        $.getJSON(url, function (result) {
            let labels = result.map(function (e) {
                return e.month;
            });

            let values = result.map(function (e) {
                return e.total_price;
            });

            let setData = {
                labels: labels,
                datasets: [
                    {
                        label: "Total price per month",
                        data: values,
                        backgroundColor: ['#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6',
                            '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D',
                            '#80B300', '#809900', '#E6B3B3', '#6680B3', '#66991A',
                            '#FF99E6', '#CCFF1A', '#FF1A66', '#E6331A', '#33FFCC',
                            '#66994D', '#B366CC', '#4D8000', '#B33300', '#CC80CC',
                            '#66664D', '#991AFF', '#E666FF', '#4DB3FF', '#1AB399',
                            '#E666B3', '#33991A', '#CC9999', '#B3B31A', '#00E680',
                            '#4D8066', '#809980', '#E6FF80', '#1AFF33', '#999933',
                            '#FF3380', '#CCCC00', '#66E64D', '#4D80CC', '#9900B3',
                            '#E64D66', '#4DB380', '#FF4D4D', '#99E6E6', '#6666FF']
                    }]
            }

            let options = {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }

            // let graph = $("#total-price-per-month").get(0).getContext('2d');

            // createGraph(setData, graph, 'bar', options);

            // Kreiraj novi grafikon i sačuvaj referencu
            let graph = $("#total-price-per-month").get(0).getContext('2d');
            totalPricePerMonthChart = new Chart(graph, {
                type: 'bar',
                data: setData,
                options: options
            });
        });
    }
    function generateTotalPricePerTitle(searchQuery) {

        // Uništavanje postojećeg grafikona ako postoji
        if (totalPricePerTitleChart) {
            totalPricePerTitleChart.destroy();
            totalPricePerTitleChart = null;
        }

        $("#total-price-per-title-canvas").empty();
        $("#total-price-per-title-canvas").append(
            '<canvas id="total-price-per-title"' +
            'style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 634px;"' +
            'class="chartjs-render-monitor"></canvas>'
        );

        if (!searchQuery)
        {
            searchQuery = "";
        }

        let url = `/reportTotalPricePerTitle?searchQuery=${searchQuery}`;

        $.getJSON(url, function (result) {
            let labels = result.map(function (e) {
                return e.title;
            });

            let values = result.map(function (e) {
                return e.total_price;
            });

            // // Promeni tip grafikona iz 'line' u 'bar'
            // let setData = {
            //     labels: labels,
            //     datasets: [{
            //         label: "Total price per title",
            //         data: values,
            //         backgroundColor: '#4e73df',  // Jedna boja za sve ili niz boja
            //         borderColor: '#4e73df',
            //         borderWidth: 1
            //     }]
            // };
            //
            // let options = {
            //     indexAxis: 'x',  // 'y' za horizontalni bar chart
            //     scales: {
            //         y: {
            //             beginAtZero: true
            //         }
            //     },
            //     plugins: {
            //         legend: {
            //             display: false  // Sakri legendu ako je nepotrebna
            //         }
            //     }
            // };

            let setData = {
                labels: labels,
                datasets: [
                    {
                        label: "Total price per title",
                        data: values,
                        backgroundColor: ['#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6',
                            '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D',
                            '#80B300', '#809900', '#E6B3B3', '#6680B3', '#66991A',
                            '#FF99E6', '#CCFF1A', '#FF1A66', '#E6331A', '#33FFCC',
                            '#66994D', '#B366CC', '#4D8000', '#B33300', '#CC80CC',
                            '#66664D', '#991AFF', '#E666FF', '#4DB3FF', '#1AB399',
                            '#E666B3', '#33991A', '#CC9999', '#B3B31A', '#00E680',
                            '#4D8066', '#809980', '#E6FF80', '#1AFF33', '#999933',
                            '#FF3380', '#CCCC00', '#66E64D', '#4D80CC', '#9900B3',
                            '#E64D66', '#4DB380', '#FF4D4D', '#99E6E6', '#6666FF']
                    }]
            }

            let options = {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }

            let graph = $("#total-price-per-title").get(0).getContext('2d');

            // createGraph(setData, graph, 'line', options);

            // // Kreiraj novi grafikon i sačuvaj referencu
            // let graph = $("#total-price-per-title").get(0).getContext('2d');
            totalPricePerTitleChart = new Chart(graph, {
                type: 'line',
                data: setData,
                options: options
            });

        });
    }
</script>