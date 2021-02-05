<?php 
                        $conn = OpenCon();
                        $sql = "SELECT * FROM `client`";
                        $res = mysqli_query($conn, $sql);
                ?>

<table id="example2" class="table table-bordered table-hover">
                  <thead>
                    <tr>
                      <th>Client Name</th>
                      <th>Image</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php while($row = mysqli_fetch_array($res)){ ?>
                      <tr>
                        <td><?php echo $row['id_client']; ?></td>
                        <td><?php echo $row['client_name']; ?></td>
                        <td><?php echo $row['image']; ?></td>
                        <td>
                            <form class="forms-sample" action="../../php/companyProfile/clientActions.php" method="POST">
                                    <input type="text" class="form-control" name="id" hidden value="<?php echo $row['id_client']; ?>"> 
                                    <button class="badge badge-danger" name="submitDeleteClient">Delete</button>
                            </form>
                        </td>
                      </tr>
                    <?php } ?>
                  </tbody>
                </table>