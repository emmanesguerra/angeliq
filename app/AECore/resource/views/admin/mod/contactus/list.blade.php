@extends('admin.layouts.app')

@section('pageHeader')
Contact Us
@endsection

@section('content')
<!-- Main content -->
<section class="content container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <div class='nav-tabs-custom'>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs " role="tablist">
                    <li role="presentation" class="active"><a href="#list" id='listtab' aria-controls="list" role="tab" data-toggle="tab">Lists</a></li>
                    <li role="presentation"><a href="#form" id='formtab' aria-controls="form" role="tab" data-toggle="tab">Create/ Update Form</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="list">
                        <div class="box-body">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                                <table id="contactlists" class="table table-hover dataTable" role="grid" aria-describedby="contactlists_info" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Address</th>
                                            <th>Contact Person</th>
                                            <th>Marker</th>
                                            <th>Date Created</th>
                                            <th>Date Updated</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Address</th>
                                            <th>Contact Person</th>
                                            <th>Marker</th>
                                            <th>Date Created</th>
                                            <th>Date Updated</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="form">
                        <div class="box-body">
                             <form autocomplete="off" v-on:submit.prevent="onSubmit" id="contactform" class="form-horizontal col-sm-12">
                                <contact-form 
                                    v-bind:info='model'
                                    v-bind:errors="errors"
                                    v-on:emit-addmore="addMore"
                                    v-on:emit-removeselected="removeSelected">
                                </contact-form>

                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <button @click='reset' type="button" class="btn btn-default">Discard Changes</button>
                                    <button @click='submit' type="button" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="modal modal-danger fade in" id="modal-danger">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Danger!</h4>
            </div>
            <div class="modal-body">
                <p>You are about to remove this contact record (<strong id="idtobedeleted"></strong>) in the system. Do you wish to continue?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Cancel</button>
                <button onclick="proccessdata(contact_id, `delete`)" type="button" class="btn btn-outline">Yes</button>
            </div>
        </div>
    </div>
</div>


@endsection

@section('ae-scripts')

<script>
    var contactindexurl = "{{ route('contactus.index') }}";
    var contactdataurl = "{{ route('contactus.data') }}";
</script>

<script src="{{ asset('AdminLTE-2.4.3/bower_components/datatables.net/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('AdminLTE-2.4.3/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('core/js/contactus-vue.js') }}"></script>
<script src="{{ asset('core/js/contactus-ext.js') }}"></script>


@endsection