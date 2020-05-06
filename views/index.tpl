<html>
<head>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body style="padding: 50px">
    <div style="width:50%; align: center">
      <table id='table' class="table table-striped table-bordered" border-spacing: 0.5rem; font-family:Arial, Helvetica, sans-serif;font-size:16px;">
        <thead>
        <tr>
            <th height: 12px;>URL</th>
            <th>Time (s)</th>
            <th>Size (Kb)</th>
        </tr>
        </thead>
        <tbody>
        % for m in measures:
            <tr>
                <th>{{m[0]}}</th>
                <th>{{m[1]}}</th>
                <th>{{m[2]}}</th>
            % end
            </tr>
        % end
        </tbody>
      </table>
    </div>
  <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>

  <script>
      $(document).ready(function start() {
        $("#table").DataTable({
        columnDefs: [
            {
                className: 'mdl-data-table__cell--non-numeric'
            }
        ]
    });
      });
  </script>
</body>
</html>