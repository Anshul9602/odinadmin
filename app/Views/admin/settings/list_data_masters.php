<?= $this->include('admin/common/header') ?>
<?= $this->include('admin/common/menu') ?>
<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Manage Master Data Of Application</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">List of Masters</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example4" class="display" style="min-width: 845px">
                                <thead>
                                    <tr>
                                        <th>S No</th>
                                        <th>Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   
                                   
                                    
                                    
                                    <tr>
                                        <td>1.</td>
                                        <td>
                                            <h5>All Categories</h5>
                                        </td>
                                        <td>
                                            <a href="<?= base_url('admin/settings/listAllDepartments/' . $token) ?>">
                                                <button type="button" class="btn btn-rounded btn-primary">
                                                    Manage
                                                </button>
                                            </a>
                                        </td>
                                    </tr>
                                    

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->include('admin/common/footer') ?>